<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/11
 * Time: 20:46
 */
namespace app\index\controller;

use app\index\model\User;
use EasyWeChat\Foundation\Application;
use think\Session;
use think\Config;

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
         // 获取 OAuth 授权结果用户信息
         $user = $oauth->user();
         $openid = $user->getId();

         $userInfo = User::get(['openid' => $openid]);

         if(empty($userInfo)) {
             $nickName = trim($user->getNickname());
             if($nickName) {
                 //如果返回了基本信息，则记录到数据库
                 $data = $user->getOriginal();
                 //$data = json_encode($user->getOriginal());
                 $userModel = new User($data);
                 $userModel->save();
                 Session::set('user_id', $userModel->id);

             } else {
                 Config::load('config.php');
                 $options = Config::get('weixin_mp');
                 $options['oauth']['scopes'] = ['snsapi_userinfo'];
                 $this->app = new Application($options);
                 $this->app->oauth->redirect()->send();
             }
         }

         //Session::set('user_openid',$openid);
         Session::set('user_id', $userInfo['id']);

         $targetUrl = Session::get('target_url');
         $targetUrl = empty($targetUrl) ? '/' : $targetUrl;

         // 跳转到 访问来源地址
         $this->redirect($targetUrl);
     }
}