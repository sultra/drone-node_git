# Drone node_git
- 0.1.0

基于node，带git的插件；提供执行脚本的入口参数


## 使用
``` yaml
pipeline:
  build:
    image: plugin/node_git:alpine
    secrets: [git_username,git_password]
    thegate: ./main.sh
    environment:
      - KEY=value

```
### 参数
+ GIT_USERNAME git的账号
+ GIT_PASSWORD git的密码
+ thegate 执行脚本

## Licens
打个招呼，随便使用