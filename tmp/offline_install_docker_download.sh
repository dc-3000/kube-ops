#!/bin/bash
#===============================================================================
#          FILE: offline_install_docker_download.sh
#         USAGE: . ${YOUR_PATH}/offline_install_docker_download.sh  
#   DESCRIPTION: 
#        AUTHOR: IVAN DU
#        E-MAIL: mrivandu@hotmail.com
#        WECHAT: ecsboy
#      TECHBLOG: https://ivandu.blog.csdn.net
#        GITHUB: https://github.com/mrivandu
#       CREATED: 2019-06-13 18:26:03
#       LICENSE: GNU General Public License.
#     COPYRIGHT: © IVAN DU 2019
#      REVISION: v1.0
#===============================================================================

cd ~
mkdir {createrepo,docker}
curl http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
yum -y install --downloadonly --downloaddir=createrepo createrepo
yum -y install --downloadonly --downloaddir=docker-ce docker-ce-18.09.6-3.el7
tar -cvzf pkgs.tar.gz createrepo docker
rm -rf createrepo docker
