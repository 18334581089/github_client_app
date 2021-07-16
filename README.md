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
