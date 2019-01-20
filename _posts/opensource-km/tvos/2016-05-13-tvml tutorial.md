---
layout: post
category : AppleTV
tagline: "Apple TV Hello World (1)"
tags : [fans,social_network,facebook,growth_hack]
title: "Apple TV Hello World (1)"
imagefeature: https://farm8.staticflickr.com/7527/27015435302_97d4b07d0f_o.jpg

---

### TVML說在前頭

第一個教學，[在此可以參考！](https://www.raywenderlich.com/114886/beginning-tvos-development-with-tvml-tutorial)


如果是xcode 7.3.1，則他已經內建好TVML project template，還滿完整的Hello World，可以省下很多功夫。
![image](https://farm8.staticflickr.com/7797/27076866256_675d50bedd_o.png)


### 啟動TVML Server端
其實只要把Server side的程式如JS或網頁，放在apache或perl的伺服器目錄就可以，大多數只要可以存取的到js目錄就可以了。


### 無法存取JS?
預設的info.plist設定檔中無法存取js檔案，或是https的協定，請設定如下：

{%gist dearsherlock/921cdd02b92a91cb61d2c30cfe5ca215%}

完整的設定可以參考如下：

{%gist dearsherlock/ce20cd4c6a9e44867ee025f6853fad9c%}

在xcode可以在這裡設定：
![image](https://farm8.staticflickr.com/7364/27009464662_642df16820_o.png)

原因如下：
`
Note: Adding this key to your Info.plist is necessary because as of iOS 9, your app will prevent linking to non-HTTPS servers to encourage best practices. In this tutorial, you’ll be testing against a local server without HTTPS enabled, so you’ll disable the default behavior.`

### 第一個範例
{%gist dearsherlock/daf1f4138cf1982d3ad271d83775369a%}

基本上就是client端push 資料和樣板給Server端顯示在TV上。


Server端的程式，要記得去改一下ip和目錄
{%gist dearsherlock/1b5543c439ef66934978c10c3829424d%}

在Apple TV上的顯示為：
![image](https://farm8.staticflickr.com/7307/27108099275_960ddd2a34_o.png)


### Template 參考
以下是Apple 建議的樣板，[可以參考。](https://developer.apple.com/library/tvos/documentation/LanguagesUtilities/Conceptual/ATV_Template_Guide/TextboxTemplate.html#//apple_ref/doc/uid/TP40015064-CH2-SW8)