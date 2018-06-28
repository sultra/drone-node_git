FROM node:alpine

WORKDIR /root

COPY . .

# 添加清华源、安装bash 等其他编译工具
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk update && apk add --no-cache bash \
    git && \
    npm i typescript -g --registry=https://registry.npm.taobao.org

ENTRYPOINT [ "/root/script.sh" ]