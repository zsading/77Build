#!/bin/bash

#<---------可选参数----------->
#工程名
Project_Name="FantasticImg"
#workspace的名字
xcworkspace="FantasticImg"
#scheme的名字
scheme="FantasticImg"
#plist路径
ADHOCExportOptionsPlist=./$Project_Name/Info.plist
#环境配置,Release或者Debug,Release
Configuration="Release"
#<---------可选参数----------->


function configList (){
	xcodebuild -list
}

function build (){
	
	echo -e "\033[42;37m 输入 y 确认开始构建: \033[0m" 
	
	read buldInput
	if [[ $buldInput == "y" ]]; then
		xcodebuild -workspace $xcworkspace.xcworkspace -scheme $scheme -configuration Release -archivePath build/$xcworkspace-adhoc.xcarchive clean archive build

		echo -e "\033[43;37m ~~请确认BUILD SUCCEEDED~~ \033[0m" 
	else
		echo -e "\033[41;37m ~已结束!~ \033[0m" 	
	fi

}


function package (){
	echo -e "\033[42;37m 输入 y 确认开始打包,目标是->桌面: \033[0m" 
	read pack
	if [[ $pack == "y" ]]; then
		xcodebuild  -exportArchive -archivePath build/$xcworkspace-adhoc.xcarchive -exportOptionsPlist ${ADHOCExportOptionsPlist} -exportPath ~/Desktop/$xcworkspace-adhoc.ipa

		echo -e "\033[42;37m ~打包成功~ \033[0m" 
	else
		echo -e "\033[41;37m ~当前操作被取消!~ \033[0m" 
	fi
}


while [[ 1 ]]; do
	echo -e "\033[42;37m 输入1.查看项目参数 2.构建 3.打包  输入除 1~3 之外任何则退出\033[0m" 
	read begin
	case $begin in
		1) configList
			;;
		2) build
			;;
		3) package
			;;
		*) break
			;;
	esac
done

