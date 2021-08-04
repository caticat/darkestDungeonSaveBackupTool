#!/bin/bash

# 黑暗地牢清理冗余备份

# 查找最新的备份文件
arrSave=(`ls -lt $dirBackup | grep ^d | awk '{print $9}' | grep ^save_`)
latestSave=${arrSave[0]}

echo "保留最新存档:$latestSave"
echo "开始清空冗余存档"

for save in ${arrSave[@]}; do
    if [ $save != $latestSave ]; then
        echo "删除存档:$save"
        rm -rf $dirBackup$save
    fi
done

echo "完成"
