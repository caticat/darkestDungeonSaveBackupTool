#!/bin/bash

# 管理功能

# 启动参数
op=""
if [ $# -gt 0 ]; then
	op=$1
fi

# 脚本目录
pathBin=".bin/"

# 导入配置
source path.conf

# 参数整理
pathBack=`pwd`/$dirBackup

# 执行
case $op in
	# 备份存档
	backup|b)
		source "$pathBin"bakup.sh
		;;
	# 还原存档
	restore|r)
		source "$pathBin"restore.sh
		;;
	# 清理备份(只保留最新的一个)
	clear|c)
		source "$pathBin"clear.sh
		;;
	*)
		echo "Usage: $0 {b|backup|r|restore|c|clear}"
		exit 2
		;;
esac
