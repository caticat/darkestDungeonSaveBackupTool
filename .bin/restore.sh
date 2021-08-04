#!/bin/bash

# 黑暗地牢存档还原

# 查找最新的备份文件
arrSave=(`ls -lt $dirBackup | grep ^d | awk '{print $9}' | grep ^save_`)
latestSave=${arrSave[0]}

echo "还原存档:$latestSave"

# 拼接完整目录
pathBack="$pathBack$latestSave/*"

# 复制
cp -rf $pathBack "$pathSave"

echo "完成"
