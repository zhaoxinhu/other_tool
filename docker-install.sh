#!/bin/sh

# 安装docker
# 更新cenos
yum update
# 卸载旧版本docker
yum remove docker docker-common docker-selinux docker-engine
# 安装docker的驱动配置环境
yum install -y yum-utils device-mapper-persistent-data lvm2
# 添加yum源
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# 安装最新版本docker
yum install docker-ce
# 启动docker
systemctl start docker
# 将docker加入开机启动
systemctl enable docker

# 安装docker-compose
# 1 安装epel源
yum install -y epel-release
# 2 安装docker-compose
yum install -y docker-compose 