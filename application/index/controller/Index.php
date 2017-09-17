<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/10
 * Time: 13:04
 */
namespace app\index\controller;

use app\index\model\UserBook;
use think\Cookie;
use think\Request;
use think\Session;
use EasyWeChat\Foundation\Application;
use think\Config;

class Index extends Wechat {

    private $app;

    public function index()
    {
        $location = Session::get('user_location_id');

        Config::load('config.php');
        $options = Config::get('weixin_mp');
        $this->app = new Application($options);

        $js = $this->app->js;
        if(empty($location)) {
            $this->assign('location',0);
        }else {
            $this->assign('location',1);
        }
        $js = $js->config(array('scanQRCode','getLocation'),false,false,false);

        $this->assign('config',$js);
        $this->assign('jsApiList',json_encode($js['jsApiList']));

        $getCookie = new Analysis();
        $bookInfo = $getCookie->getCookie();

        $this->assign('bookInfo', $bookInfo);

        return $this->fetch();
    }


    public function saveUserBook(Request $request) {

        $data = $request->param();

        $user_id = Session::get('user_id');
        $user_location_id = Session::get('user_location_id');

        $user_book = [];
        $user_book['user_id'] = $user_id;
        $user_book['user_location_id'] = $user_location_id;

        $userbookModel = new UserBook($user_book);
        foreach ($data as $value) {
            foreach ($value as $book_id) {
                $user_book['book_id'] = $book_id;
                $result = $userbookModel->data($user_book,true)->isUpdate(false)->save();
                if($result) {
                     Cookie::delete($book_id);
                }else{
                    $falseId[] = $book_id;
                }
            }
        }
        if (empty($falseId)) {
            $this->redirect('index/user/index');
        }else {
            $false_bookInfo = new Analysis();
            $false_bookInfo = $false_bookInfo->getCookie();
            $this->assign('false_bookInfo', $false_bookInfo);
            return $this->fetch();
        }
    }

}