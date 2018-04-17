<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/12
 * Time: 16:02
 */
namespace app\index\controller;

use app\index\model\Book;
use app\index\model\UserLocation;
use think\Controller;
use think\Cookie;
use think\Db;
use think\Loader;
use think\Request;
use think\Session;

class Analysis extends Controller {

    public function _initialize()
    {

    }

    public function location(Request $request) {
        $location = $request->param();

        $user_id = Session::get('user_id');
        $location['user_id'] = $user_id;

        $location_id = Session::get('user_location_id');
        if(empty($location_id)) {
            //定位信息写入数据库
            $userLocationModel = new UserLocation($location);
            $result = $userLocationModel->save();

            if($result) {
                $user_location_id = $userLocationModel->id;
                Session::set('user_location_id', $user_location_id);
                return json_encode($location);
            }else {
                Session::set('user_location_id', null);
                return json_encode('位置信息写入失败！');
            }
        }else {
            return json_encode('已成功获取定位信息!');
        }
    }

    public function scan(Request $request) {

        $result = $request->param();
        $explode = explode(',',$result['scan']);
        $code = [];
        $code['type'] = $explode[0];   //编码类型，通常为“EAN_13”
        $code['value'] = $explode[1];  //编码值串

        if(substr($code['value'],0,3) == 978) {
            //如果是书籍类
            $isbn = $code['value'];
            $bookInfo = Db::name('book')->where('isbn', $isbn)->find();
            $book_id = $bookInfo['id'];

            if (empty($book_id)) {

                $bookInfo = $this->books($isbn);
                     if ($bookInfo == 0) {
                         return '0'; //解析失败，请重新扫码
                     } elseif ($bookInfo == 1) {
                         return '1'; //未收录
                     } else {
                         return json_encode($this->getCookie());
                     }

            }else {

                Cookie::set($book_id, $bookInfo, 600);

                return json_encode($this->getCookie());
            }

        }

        return '2'; //抱歉，暂不支持非图书类扫码！
    }

    public function books($isbn) {
        $douban_url = "https://book.douban.com/isbn/".$isbn;
        $exception = '0';
        $contents = null;
        try {
            $contents = file_get_contents($douban_url);
        } catch (\Exception $e) {
            $exception =  '1'; //未收录
        }
        if ($exception) {
            return $exception;
        }
/*      //通过正则表达式从网页中解析图书相关信息
        $contents = file_get_contents($douban_url);

        $preg_match = "/(?<=subject clearfix\">)(.|\n)*?".$isbn."(?=<br)/";
        preg_match($preg_match, $contents, $matches);

        $preg_match_picUrl = "/(?<=href=\").*?(?=\")/";
        preg_match($preg_match_picUrl, $matches[0], $picUrl);
        $bookInfo['picUrl'] = $picUrl[0];

        $preg_match_title = "/(?<=title=\").*?(?=\")/";
        preg_match($preg_match_title, $matches[0], $title);
        $bookInfo['title'] = $title[0];

        $preg_match_info = "/(?<=pl\">)(.*?)(\<\/span>)(.*?)(?=\<br)/";
        preg_match_all($preg_match_info, $matches[0], $info,PREG_PATTERN_ORDER);

        for ($i=0; $i<count($info[1]); $i++) {

            switch ($info[1][$i])
            {
                case '出版社:':
                    $bookInfo['press'] = $info[3][$i];
                    break;
                case '出版年:':
                    $bookInfo['year'] = $info[3][$i];
                    break;
                case '页数:':
                    $bookInfo['pages'] = $info[3][$i];
                    break;
                case '定价:':
                    $bookInfo['price'] = $info[3][$i];
                    break;
                case '装帧:':
                    $bookInfo['handcover'] = $info[3][$i];
                    break;
                case '丛书::':
                    $bookInfo['series'] = $info[3][$i];
                    break;
                default:
                    $bookInfo[$info[1][$i]] = $info[3][$i];
            }
        }*/
        //引入用于解析HTML标签的类库
        Loader::import('simple_html_dom',EXTEND_PATH);

        $html = str_get_html($contents);
        $bookInfo = [];
        //书名
        $bookInfo['title'] = $html->find("#wrapper h1 span")[0]->plaintext;

        //获取图书信息（作者、出版社等）
        $infoString = $html->find('#info')[0]->plaintext;
        $infoString = str_replace(" ","",$infoString);
        $infoArray = explode("\n",$infoString);

        foreach ($infoArray as $info) {
            if (trim($info) == "") continue;
            $detail = explode(":", $info);
            if (count($detail) == 2)
                $detail[1] = trim($detail[1]);
                switch ($detail[0])
                {
                    case '作者':
                        $bookInfo['author'] = $detail[1];
                        break;
                    case '副标题':
                        $bookInfo['subhead'] = $detail[1];
                        break;
                    case '原作名':
                        $bookInfo['originalname'] = $detail[1];
                        break;
                    case '出版社':
                        $bookInfo['press'] = $detail[1];
                        break;
                    case '出版年':
                        $bookInfo['year'] = $detail[1];
                        break;
                    case '译者':
                        $bookInfo['translator'] = $detail[1];
                        break;
                    case '页数':
                        $bookInfo['pages'] = $detail[1];
                        break;
                    case '定价':
                        $bookInfo['price'] = $detail[1];
                        break;
                    case '装帧':
                        $bookInfo['handcover'] = $detail[1];
                        break;
                    case '丛书':
                        $bookInfo['series'] = $detail[1];
                        break;
                    case 'ISBN':
                        $bookInfo['isbn'] = $detail[1];
                        break;
                    default:
                        $bookInfo[$detail[0]] = $detail[1];
                }
        }
        //获取图书标签
        $tagString = $html->find("#db-tags-section div")[0]->plaintext;
        $tagString =str_replace(" ","",$tagString);
        $tagArray = explode("&nbsp;",$tagString);

        //获取封面图片并保存到服务器
        $img = $html->find("#mainpic img")[0]->src;

        //引入用压缩图片的类库
        Loader::import('image_compress',EXTEND_PATH);
        $path = ROOT_PATH . 'public' . DS . 'download' . DS . 'bookPic' . DS . 'map' . DS .$bookInfo['isbn'].'.jpg';
        (new \imgcompress($img,26))->compressImg($path);

        $img = file_get_contents($img);
        file_put_contents(ROOT_PATH . 'public' . DS . 'download' . DS . 'bookPic' . DS .$bookInfo['isbn'].'.jpg', $img);

        //把图书信息保存到数据库
         $result = $this->saveBookinfo($bookInfo, $tagArray);
         if ($result) {
             //图书信息写入成功，则返回图书信息
             return $bookInfo;
         }
         return $exception; //解析失败
    }

    public function saveBookinfo($bookInfo, $tagArray) {

        $bookModel = new Book($bookInfo);
        $result = $bookModel->save();
        if($result) {
            $book_id = $bookModel->id;
            $bookInfo['id'] = $book_id;
            Cookie::set($book_id, $bookInfo, 600);
            Db::name('book_tag')->insert(['book_id' => $book_id, 'tag' => json_encode($tagArray)]);

            return true;
        }
        return false;
    }

    public function getCookie() {
        $book_cookie = Cookie::get();
        $bookInfo = [];

        foreach ($book_cookie as $item => $value) {
            if (trim($item) == "PHPSESSID" || trim($item) == "thinkphp_show_page_trace") continue;
            $bookInfo[$item] = Cookie::get($item);
        }
        return $bookInfo;
    }

}