#!/bin/bash
#处理环境变量获取及判空逻辑
#从secrets中获取git用户账号密码，用来拉去需要build的项目
if [ ! -n "$GIT_USERNAME" ] ;then
	printf "not input git username \n"
	exit 1
fi

if [ ! -n "$GIT_PASSWORD" ] ;then
	printf "not input git password \n"
	exit 1
fi

if [ ! -n "$PLUGIN_THEGATE" ] ;then
	printf "not input the gate, which some scripts to execute \n"
	exit 1
fi

${PLUGIN_THEGATE}