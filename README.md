## 1.安装Cordova

Cordova的命令行运行在[Node.js](http://nodejs.org/) 上面并且可以通过[NPM](https://npmjs.org/package/cordova)安装。 根据 [平台具体指导](http://cordova.axuer.com/docs/zh-cn/latest/guide/platforms/) 安装相应平台的依赖。打开命令提示符或终端，然后键入`npm install -g cordova`.

## 2.创建一个项目

使用命令行创建一个空的Cordova项目。导航到你希望创建项目的目录，然后键入 cordova create <path>。

要知道这个命令完整的选项，键入cordova help create。

## 3.添加一个平台

在创建完一个Cordova项目后，导航到项目目录。在项目目录中，你需要添加你想构建app的平台

为了添加平台， 键入 cordova platform add <platform name>。

为了知道你可以添加的平台，你可以运行cordova platform。

## 4.运行App

在命令中,键入cordova run <platform name>。

## 举例

```
1.创建App
  跳转到你维护源代码的目录中，并创建你的cordova项目：
  cordova create hello com.example.hello HelloWorld
2.所有后续命令都需要在项目目录或者项目目录的任何子目录运行:
  cd hello
3.给你的App添加目标平台。我们将会添加'ios'和'android'平台，并确保他们保存在了config.xml中:
  cordova platform add ios --save
  cordova platform add android --save

```

