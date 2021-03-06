# github_client_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#### 7/15
- 功能
1. 实现Github账号登录、退出登录功能
2. 登录后可以查看自己的项目主页
3. 支持换肤
4. 支持多语言
5. 登录状态可以持久化

- 技术点
1. 网络请求；需要请求Github API。
2. Json转Dart Model类；
3. 全局状态管理；语言、主题、登录态等都需要全局共享。
4. 持久化存储；保存登录信息，用户信息等。
5. 支持国际化、Intl包的使用

#### 7/16
- 代码结构
1. 需要使用外部图片和Icon资源
: 根目录下分别创建“imgs”和“fonts”文件夹
2. 需要通过Json来传输、保存数据
: 根目录下再创建一个用于保存Json文件的“jsons”文件夹
3. 需要多语言支持
: 根目录下创建一个“l10n”文件夹
4. 开发的Dart代码

| 文件夹 |	作用 |
| ---- | ---- |
| common |	一些工具类，如通用方法类、网络接口类、保存全局变量的静态类等 |
| l10n |	国际化相关的类都在此目录下 |
| models |	Json文件对应的Dart Model类会在此目录下 |
| states |	保存APP中需要跨组件共享的状态类 |
| routes |	存放所有路由页面类 |
| widgets |	APP内封装的一些Widget组件都在该目录下 |

- Model类定义
**梳理一下将用到的数据，然后生成相应的Dart Model类**
**Json文件转Dart Model的方案采用前面介绍过的 json_model 包方案**
1. 文件缓存(cacheConfig.json)
2. 登录者的Github账号信息(user.json)
3. 用户信息(Profile.json)
> Profile包括1: Github账号信息: **对用户账号信息和登录状态进行持久化**
> Profile包括2: 应用使用配置信息: **每一个用户都应有自己的APP配置信息**
> Profile包括3: 上次登录的用户名
> 我们使用账号密码登录
4. 项目信息(repo.json)
5. 生成Dart Model类
> 运行json_model package提供的命令来通过json文件生成相应的Dart类：
> 命令行执行
`flutter packages pub run json_model`
> **报错 Could not find package "json_model". Did you forget to add a dependency?**
> 官网 github 查看installing
> pubspec插入
```
  json_model: #latest version
  build_runner: ^1.0.0
  json_serializable: ^2.0.0
```
> **可以执行,但是,执行后报错: Unhandled exception: RangeError: Value not in range: -1**


- 解决报错
1. [博客地址](https://my.oschina.net/u/4275236/blog/3354200)
`json_model: ^0.0.2 #最新版本`
> 使用这样的方式，引入json_model
> 另外文中还是用了自己的方法封装一个脚本，也能实现json_model功能
2. 查了一下**RangeError: Value not in range: -1**
> 感觉有点像是代码的问题

#### 7/17
- 解决报错
1. 查看models目录下文件,对应的dart文件已经生成了

2. 在flutter_vscode中使用mo.sh 方法生成models成功,
3. 在当前项目中使用build_runner 2.0 版本执行 build_runner build 成功,

- 解决问题,接下来就是组合到一起
1. 不再引入json_model
2. 创建,json_model文件, 复制json_model源码
3. 路径报错,稍后继续

#### 7/19
- 调整mo.sh文件后,生成**.g.dart**文件成功
(昨天肚子疼)
- 数据持久化
1. shared_preferences
> shared_preferences对登录用户的Profile信息进行持久化
> 它通过Android和iOS平台提供的机制来实现数据持久化
> 示例
```
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
      child: RaisedButton(
        onPressed: _incrementCounter,
        child: Text('Increment Counter'),
        ),
      ),
    ),
  ));
}

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter') ?? 0) + 1;
  print('Pressed $counter times.');
  await prefs.setInt('counter', counter);
}
```
将上面的代码使用再首页

- 解决项目无法启动的问题
1. 谷歌搜索
> 再官方的json_serializable 5.0.0 插件中,展示了正确的model和.g.dart的写法
> 如下
```
import 'package:json_annotation/json_annotation.dart';

part 'example.g.dart';

@JsonSerializable()
class Person {
  final String firstName;
  final String lastName;
  final DateTime? dateOfBirth;
  Person({required this.firstName, required this.lastName, this.dateOfBirth});
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
```
```
part of 'example.dart';

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };
```

2. 通过比较可以知道
> 1: class方法中没有函数自调用

3. 目前没有办法回去了
> .g.dart文件没有生成model 的dart文件格式也有问题,template的报错也解决不了
> 测试下午的所有修改,

4. 勉强把一个madel 和 .g.dart文件改的不报错了,
> 但是具体的原因还是不清楚
> 明天找示例直接写

#### 7/20
- 解决无法启动项目
1. 修改template.dart 改为 template.txt,可以正常生成dart文件
2. 生成的dart文件报错
> [博客](https://segmentfault.com/a/1190000037784724)
> 1: mo.dart文件的作用就是生成对应的dart, runner: 生成.g.dart文件
> 2: 不再使用 文档中的 template的方式自动生成model.dart文件
> **因为没有掌握原理,不是特别理解,所以先放一放,有时间再回头看**
> 3: 使用博客中的[转换model](https://czero1995.github.io/json-to-model/)地址生成model.dart文件
> 4: 生成的文件需要加required
> 5: 在执行`flutter pub run build_runner build`, 生成.g.dart文件
> 没有报错
3. 可以启动了

####　7/21
1. shared_preferences
> 类似于web的storage
- 全局变量及共享状态
1. 需要全局共享的信息分为两类: 全局变量和共享状态
2. 全局变量包括: 全局的变量,全局的工具,全局的方法对象**(改变时需要通知所有使用该状态的组件)**
3. 共享状态包括: 跨组件或跨路由共享的信息**(改变时不需要通知组件)**

- 全局变量
1. Global 类
2. 注意点
> init()需要在App启动时就要执行
`void main() => Global.init().then((e) => runApp(MyApp()));`
> 确保Global.init()方法不能抛出异常,否则 runApp(MyApp())根本执行不到

3. 新创建的Global文件,语法提示错误,
根本搞不清楚,是格式错误,还是因为语法错误

#### 7/22
- 网上考下来的项目,也是无法执行,
- 目前的问题: 1.0的dome无法启动
1. 目前最多看看项目里面怎么写的
2. 想启动项目, 可是2.0和1.0 的区别有哪些目前也不清楚
3. 想启动项目, 就要研究2.0 的官方文档,研究区别,查看2.0的相关项目
**直接找flutter2.0的项目来研究**
4. 找到一本书,基于2.0的实战项目

#### 7/23
- 先写一点
1. 不处理格式检验,按照书上内容写完

- 共享状态
1. 区分共享和全局
> 共享可以使用全局代替,但是不建议
> 跨组件共享状态如果全局变量代替,必须得去手动处理状态变动通知、接收机制以及变量和组件依赖关系

2. 实现共享数据
> 定义相关的Provider
> 整理需要共享的状态: a: 登录用户信息 b: APP主题信息 c: APP语言信息
> 需要使用到 ChangeNotifierProvider 组件
> 实例: ProfileChangeNotifier.dart

- 封装require
1. 请求缓存策略
> 将请求的url作为key, 返回值进行缓存
> **注意:** 缓存时间
> **注意:** 最大缓存数

2. 定义缓存信息类
> 实例: CacheObject.dart

3. 封装网络请求
> 用于Github API接口调用
> 实例: Git.dart