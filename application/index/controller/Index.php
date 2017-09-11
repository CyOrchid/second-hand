<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/10
 * Time: 13:04
 */
namespace app\index\controller;

use think\Session;

class Index extends Wechat {

    public function _initialize()
    {
        parent::_initialize();
    }

    public function scan()
    {
        var_dump(Session::get('wechat_user'));
    }

}