<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/11
 * Time: 20:13
 */
namespace app\index\controller;

use EasyWeChat\Foundation\Application;
use think\Controller;
use think\Session;
use think\Config;
use think\Request;

class Wechat extends Controller {
    private $app;

    public function _initialize()
    {
        parent::_initialize();

        Config::load('config.php');
        $options = Config::get('weixin_mp');
        $this->app = new Application($options);

        $weixinUser = Session::get('user_id');
        // 未登录
        if (empty($weixinUser)) {
            $targetUrl = Request::instance()->url(true);
            Session::set('target_url', $targetUrl);

            $oauth = $this->app->oauth;
            $oauth->redirect()->send();
        }
        return true;
    }
}