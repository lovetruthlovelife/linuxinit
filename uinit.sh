#!/bin/bash

SELFDIR=$(dirname "$0")

#VIMRC_RC="/etc/vim/"

#切换脚本文件所在目录
cd $SELFDIR

#获取更新，避免后续安装合作哦呵不到软件信息而失败
#sudo apt update && sudo apt intall vim -y && sudo cp vimrc $VIMRC_DIR

#初始化vim配置
echo '配置vim...'
cp -R HOME_vim ~/.vim
cp vimrc ~/.vimrc

#复制bash配置文件
echo '更新bash配置文件...'
cp profile ~/.profile
cp bashrcrc ~/.bashrc

#初始化nano配置
echo '初始化nano配置...'
cp nanorc ~/.nanorc

#create directory
DIRLIST="bin c sh tep"

cd 

echo '创建相关目录'
for d in $DIRLIST ; do
	if [ ! -d "$d" ] ; then
		mkdir "$d"
	fi
done

#如果主目录存在mysh目录，则之复制其中的内容到mysh
cd $SELFDIR
if [ -d "$HOME/mysh" ];then
	cp -R mysh/* $HOME/mysh/

else
	cp -R mysh  $HOME/

	fi

