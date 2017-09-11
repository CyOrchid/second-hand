<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/11
 * Time: 20:46
 */
namespace app\index\controller;

use EasyWeChat\Foundation\Application;
use think\Controller;
use think\Session;
use think\Config;
use think\Request;

class Oauth extends Wechat {

    private $app;

    public function _initialize()
    {
        Config::load('config.php');
        $options = Config::get('weixin_mp');
        $this->app = new Application($options);
    }

     public function index() {

         Config::load('config.php');
         $options = Config::get('weixin_mp');
         $this->app = new Application($options);

         $oauth = $this->app->oauth;
         // ��ȡ OAuth ��Ȩ����û���Ϣ
         $user = $oauth->user();

         Session::set('wechat_user',$user->toArray());

         $targetUrl = Session::get('target_url');
         $targetUrl = empty($targetUrl) ? '/' : $targetUrl;
         var_dump($targetUrl);
         //header('location:'.$targetUrl);// ��ת�� chenyang/public/index/index/scan
         $this->redirect($targetUrl);
     }
}