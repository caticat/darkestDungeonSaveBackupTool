#!/bin/bash

# 黑暗地牢存档备份

# 计算备份文件夹名
latestSave="save_"`date +%y%m%d_%H%M%S`

echo "备份存档到:$latestSave"

# 创建目录
if [ ! -d $pathBack ]; then
	mkdir -p $pathBack
fi

# 拼接完整目录
pathBack="$pathBack$latestSave"

# 复制
cp -rf "$pathSave" $pathBack

echo "完成"
