# 77Build
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

让打包构建更简单


### [必须]
> * 确保你的项目使用了CocoaPods

### [如何使用]
### 1. 打开terminal cd 至项目根目录，确保xxx.xcworkspace在这个目录下
### 2. 编辑 77Build.sh 可选参数部分，参数也可在启动脚本后按1查看后填写
```shell
#<---------可选参数----------->
#工程名
Project_Name="xxxxxx"
#workspace的名字
xcworkspace="xxxxxx"
#scheme的名字
scheme="xxxxxx"
#plist路径
ADHOCExportOptionsPlist=./$Project_Name/xxxxxx.plist
#环境配置,Release或者Debug,Release
Configuration="Release"
#<---------可选参数----------->
```
### 3. 将77Build.sh 拖入terminal中 若遇到权限问题,请在开头加上 chmod 777
