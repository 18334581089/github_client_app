## repo.json
```
{
  "id": 1296269,
  "name": "Hello-World", //项目名称
  "full_name": "octocat/Hello-World", //项目完整名称
  "owner": "$user", // 项目拥有者，结构见"user.json"
  "parent":"$repo", // 如果是fork的项目，则此字段表示fork的父项目信息
  "private": false, // 是否私有项目
  "description": "This your first repo!", //项目描述
  "fork": false, // 该项目是否为fork的项目
  "language": "JavaScript",//该项目的主要编程语言
  "forks_count": 9, // fork了该项目的数量
  "stargazers_count": 80, //该项目的star数量
  "size": 108, // 项目占用的存储大小
  "default_branch": "master", //项目的默认分支
  "open_issues_count": 2, //该项目当前打开的issue数量
  "pushed_at": "2011-01-26T19:06:43Z",
  "created_at": "2011-01-26T19:01:12Z",
  "updated_at": "2011-01-26T19:14:43Z",
  "subscribers_count": 42, //订阅（关注）该项目的人数
  "license": { // 该项目的开源许可证
    "key": "mit",
    "name": "MIT License",
    "spdx_id": "MIT",
    "url": "https://api.github.com/licenses/mit",
    "node_id": "MDc6TGljZW5zZW1pdA=="
  }
  ...//省略其它字段
}
```
## profile.json
```
{
  "user":"$user", //Github账号信息，结构见"user.json"
  "token":"", // 登录用户的token(oauth)或密码
  "theme":5678, //主题色值
  "cache":"$cacheConfig", // 缓存策略信息，结构见"cacheConfig.json"
  "lastLogin":"", //最近一次的注销登录的用户名
  "locale":"" // APP语言信息
}
```
## cacheConfig.json
```
{
  "enable":true, // 是否启用缓存
  "maxAge":1000, // 缓存的最长时间，单位（秒）
  "maxCount":100 // 最大缓存数
}
```
## user.json
```
{
  "login": "octocat", //用户登录名
  "avatar_url": "https://github.com/images/error/octocat_happy.gif", //用户头像地址
  "type": "User", //用户类型，可能是组织
  "name": "monalisa octocat", //用户名字
  "company": "GitHub", //公司
  "blog": "https://github.com/blog", //博客地址
  "location": "San Francisco", // 用户所处地理位置
  "email": "octocat@github.com", // 邮箱
  "hireable": false,
  "bio": "There once was...", // 用户简介
  "public_repos": 2, // 公开项目数
  "followers": 20, //关注该用户的人数
  "following": 0, // 该用户关注的人数
  "created_at": "2008-01-14T04:33:35Z", // 账号创建时间
  "updated_at": "2008-01-14T04:33:35Z", // 账号信息更新时间
  "total_private_repos": 100, //该用户总的私有项目数(包括参与的其它组织的私有项目)
  "owned_private_repos": 100 //该用户自己的私有项目数
  ... //省略其它字段
}
```