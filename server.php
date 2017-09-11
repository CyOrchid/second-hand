<?php
include __DIR__ . '/vendor/autoload.php'; // 引入 composer 入口文件
use EasyWeChat\Foundation\Application;
$options = [
    'debug'  => true,
    'app_id' => 'wx415910006d55188d',
    'secret' => 'c4d6eb9609dc479eb6708d9c5ab9d409',
    'token'  => 'findlab',
    // 'aes_key' => null, // 可选
    'log' => [
        'level' => 'debug',
        'file'  => '/tmp/easywechat.log', // XXX: 绝对路径！！！！
    ],
    //...
];
$app = new Application($options);
$server = $app->server;
$server->setMessageHandler(function ($message) {
    return $message->FromUserName;
});
$response = $app->server->serve();
// 将响应输出
$response->send(); // Laravel 里请使用：return $response;