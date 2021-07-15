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
- 项目目录
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

- 开发部署
1. cacheConfig.json
: 文件缓存
2. 登录者的Github账号信息(user)
3. 用户信息(Profile)
?