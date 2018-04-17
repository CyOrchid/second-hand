<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/9
 * Time: 12:52
 */
return  [
    'weixin_mp' => [
        'debug'  => true,
        'app_id' => 'wx0e0ce194492cb77e',
        'secret' => 'b70c3087e36f87556fa7241080441ea2',
        'token'  => 'findlab',
        // 'aes_key' => null, // 可选
        'log' => [
            'level' => 'debug',
            'file'  => '/tmp/easywechat.log', // XXX: 绝对路径！！！！
        ],
        'oauth' => [
            'scopes'   => ['snsapi_base'],
            'callback' => '/second-hand/public/index/oauth',
        ]
    ],


];