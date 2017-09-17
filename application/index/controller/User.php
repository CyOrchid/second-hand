<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/17
 * Time: 16:12
 */
namespace app\index\controller;

use think\Db;
use think\Session;

class User extends Wechat {

    public function index() {

        $user_id = Session::get('user_id');

        $userInfo = \app\index\model\User::get($user_id);

        $bookInfo = Db::name('user_book')->alias('ub')
            ->join('hand_book b', 'ub.book_id = b.id', 'left')
            ->join('hand_user_location ul', 'ub.user_location_id = ul.id', 'left')
            ->join('hand_book_tag bt', 'b.id = bt.book_id', 'left')
            ->where('ub.user_id', '=', $user_id)
            ->select();

        $this->assign('userInfo', $userInfo);
        $this->assign('bookInfo', $bookInfo);
        return $this->fetch();
    }
}