#!/bin/bash

IMG_PATH=~/Downloads/2020-05-27-raspios-buster-lite-armhf.img

# 查看盘符
# diskutil list

# 卸载该磁盘
diskutil unmountDisk /dev/disk3

# 将系统镜像写入磁盘
sudo dd bs=1m if=$IMG_PATH of=/dev/rdisk3
sync

# 防止touch的时候Permission denied
sleep 2

# 设置允许ssh远程登录
touch /Volumes/boot/ssh

# 防止volume could not be unmounted
sleep 2

# 卸载磁盘
diskutil unmountDisk /dev/disk3
