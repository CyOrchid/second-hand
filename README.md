Second-Hand
===============

## 卖方（有条形码的个人物品想出售）
1、  扫码可获得商品编码
（书籍https://book.douban.com/isbn/".$_GET["isbn"]其他商品阿里巴巴）
解析得到详细信息并展示给用户
2、  
1)  确认发布（用户性别、地理位置、联系方式、商品售卖信息）
2)  继续扫码（最后批量发布）
3、  发布成功（可在个人中心查看在售商品等等）

吸引点：发布便捷，尤其对于有批量发布需求的用户来说
劣势：对无条码物品的发布（代表性示例：女生衣物（原味内衣）、丢了包装盒的物品等）



## 买方①（有真实购买需要的买家，重点列表交互）
1.  扫码或手动输入物品名称（获取定位）
2.  两种交互方式（地图，列表）
3.  
1)  地图：以该用户当前定位为中心，在地图上标定所有该商品发布位置（可进行男女、距离、新旧、价位等进行筛选显示）
2)  列表：类似美团团购APP中那种列表方式展示，亦具有各自筛选显示功能
4.  点击可查看发布商品详情（包括商品详情、发布者所公开的个人详情等等）
5.  感兴趣则联系卖家（通过微信模板消息通知卖家：通过微信模板消息通知卖家，点击该模板消息即可进行即时通讯或留言，类似QQ，聊天记录保留）进行交流
6.  下单
7.  完成交易


## 买方②（闲逛或动机不纯的买家，重点地图交互）
1.  
1)  选择地图模式（标注当前位置所有在售商品）
2)  选择列表模式（类似团购APP）
2.  可根据提供的筛选条件进行条件显示
（比如大分类：衣服饰品、电子产品、图书•••
小分类：图书模块，可以分文学、言情、科幻等
特色分类：对发布人的筛选|性别、年龄、职业•••）
3.  点击可查看发布商品详情（包括商品详情、发布者所公开的个人详情等等）
4.  感兴趣则联系卖家（通过微信模板消息通知卖家：点击该模板消息即可进行即时通讯或留言，类似QQ，聊天记录保留）进行交流
5.  下单
6.  完成交易



### 重大吸引点：

1、  提高用户留存率:
提供买卖双方交流平台：对比“探探”交友软件，匹配成功后即流失到微信，其本身依托微信，降低加微信的必要，避免用户流失

2、  提高用户活跃度:
具有提供闲逛or目的不纯模式，不一定要有买卖需求才进来

3、  扩大受众群体:
高校学生 + 职场青年白领、富士康流水线员工

4、  丰富用户体验:
（1、 模板消息：依托微信通知及时，机制简洁，沟通便捷，避免骚扰
（2、 地图模式：位置信息更直观



可能的难点：
1、  地图交互模块（前端技术）；
2、  同一定位点，发布了太多商品，在地图上如何美观、合理交互；
3、  聊天模块；
4、  





EasyWeChat 
===============

EasyWeChat 是一个开源的 微信 非官方 SDK。

EasyWeChat 的安装非常简单，因为它是一个标准的 Composer 包，这意味着任何满足下列安装条件的 PHP 项目支持 Composer 都可以使用它。

环境需求
PHP >= 5.5.9 (其实你不必惊讶，PHP 7 的时代了)
PHP cURL 扩展
PHP OpenSSL 扩展
PHP fileinfo 拓展 素材管理模块需要用到




ThinkPHP 5.0
===============

[![Total Downloads](https://poser.pugx.org/topthink/think/downloads)](https://packagist.org/packages/topthink/think)
[![Latest Stable Version](https://poser.pugx.org/topthink/think/v/stable)](https://packagist.org/packages/topthink/think)
[![Latest Unstable Version](https://poser.pugx.org/topthink/think/v/unstable)](https://packagist.org/packages/topthink/think)
[![License](https://poser.pugx.org/topthink/think/license)](https://packagist.org/packages/topthink/think)

ThinkPHP5在保持快速开发和大道至简的核心理念不变的同时，PHP版本要求提升到5.4，对已有的CBD模式做了更深的强化，优化核心，减少依赖，基于全新的架构思想和命名空间实现，是ThinkPHP突破原有框架思路的颠覆之作，其主要特性包括：

 + 基于命名空间和众多PHP新特性
 + 核心功能组件化
 + 强化路由功能
 + 更灵活的控制器
 + 重构的模型和数据库类
 + 配置文件可分离
 + 重写的自动验证和完成
 + 简化扩展机制
 + API支持完善
 + 改进的Log类
 + 命令行访问支持
 + REST支持
 + 引导文件支持
 + 方便的自动生成定义
 + 真正惰性加载
 + 分布式环境支持
 + 更多的社交类库

> ThinkPHP5的运行环境要求PHP5.4以上。

详细开发文档参考 [ThinkPHP5完全开发手册](http://www.kancloud.cn/manual/thinkphp5)

## 目录结构

初始的目录结构如下：

~~~
www  WEB部署目录（或者子目录）
├─application           应用目录
│  ├─common             公共模块目录（可以更改）
│  ├─module_name        模块目录
│  │  ├─config.php      模块配置文件
│  │  ├─common.php      模块函数文件
│  │  ├─controller      控制器目录
│  │  ├─model           模型目录
│  │  ├─view            视图目录
│  │  └─ ...            更多类库目录
│  │
│  ├─command.php        命令行工具配置文件
│  ├─common.php         公共函数文件
│  ├─config.php         公共配置文件
│  ├─route.php          路由配置文件
│  ├─tags.php           应用行为扩展定义文件
│  └─database.php       数据库配置文件
│
├─public                WEB目录（对外访问目录）
│  ├─index.php          入口文件
│  ├─router.php         快速测试文件
│  └─.htaccess          用于apache的重写
│
├─thinkphp              框架系统目录
│  ├─lang               语言文件目录
│  ├─library            框架类库目录
│  │  ├─think           Think类库包目录
│  │  └─traits          系统Trait目录
│  │
│  ├─tpl                系统模板目录
│  ├─base.php           基础定义文件
│  ├─console.php        控制台入口文件
│  ├─convention.php     框架惯例配置文件
│  ├─helper.php         助手函数文件
│  ├─phpunit.xml        phpunit配置文件
│  └─start.php          框架入口文件
│
├─extend                扩展类库目录
├─runtime               应用的运行时目录（可写，可定制）
├─vendor                第三方类库目录（Composer依赖库）
├─build.php             自动生成定义文件（参考）
├─composer.json         composer 定义文件
├─LICENSE.txt           授权说明文件
├─README.md             README 文件
├─think                 命令行入口文件
~~~

> router.php用于php自带webserver支持，可用于快速测试
> 切换到public目录后，启动命令：php -S localhost:8888  router.php
> 上面的目录结构和名称是可以改变的，这取决于你的入口文件和配置参数。

## 命名规范

`ThinkPHP5`遵循PSR-2命名规范和PSR-4自动加载规范，并且注意如下规范：

### 目录和文件

*   目录不强制规范，驼峰和小写+下划线模式均支持；
*   类库、函数文件统一以`.php`为后缀；
*   类的文件名均以命名空间定义，并且命名空间的路径和类库文件所在路径一致；
*   类名和类文件名保持一致，统一采用驼峰法命名（首字母大写）；

### 函数和类、属性命名
*   类的命名采用驼峰法，并且首字母大写，例如 `User`、`UserType`，默认不需要添加后缀，例如`UserController`应该直接命名为`User`；
*   函数的命名使用小写字母和下划线（小写字母开头）的方式，例如 `get_client_ip`；
*   方法的命名使用驼峰法，并且首字母小写，例如 `getUserName`；
*   属性的命名使用驼峰法，并且首字母小写，例如 `tableName`、`instance`；
*   以双下划线“__”打头的函数或方法作为魔法方法，例如 `__call` 和 `__autoload`；

### 常量和配置
*   常量以大写字母和下划线命名，例如 `APP_PATH`和 `THINK_PATH`；
*   配置参数以小写字母和下划线命名，例如 `url_route_on` 和`url_convert`；

### 数据表和字段
*   数据表和字段采用小写加下划线方式命名，并注意字段名不要以下划线开头，例如 `think_user` 表和 `user_name`字段，不建议使用驼峰和中文作为数据表字段命名。

## 参与开发
请参阅 [ThinkPHP5 核心框架包](https://github.com/top-think/framework)。

## 版权信息

ThinkPHP遵循Apache2开源协议发布，并提供免费使用。

本项目包含的第三方源码和二进制文件之版权信息另行标注。

版权所有Copyright © 2006-2017 by ThinkPHP (http://thinkphp.cn)

All rights reserved。

ThinkPHP® 商标和著作权所有者为上海顶想信息科技有限公司。

更多细节参阅 [LICENSE.txt](LICENSE.txt)
