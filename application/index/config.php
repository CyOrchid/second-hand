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
        'app_id' => 'wx415910006d55188d',
        'secret' => 'c4d6eb9609dc479eb6708d9c5ab9d409',
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