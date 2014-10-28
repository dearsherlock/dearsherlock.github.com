---
layout: post
category : Chrome 
tagline: "Chrome開發資源"
tags : [Chrome]
title: "Chrome開發的一些連結資訊"

---

###範例

找範例：

https://developer.chrome.com/extensions/samples#script

要植入網頁的content script  
https://developer.chrome.com/extensions/content_scripts

Chrome 瀏覽器與鍵盤控制
https://developer.chrome.com/extensions/commands
有發現，雖然在manifest.json有設定類似如下的資訊，但還是需要在chrome://extentions下方的鍵盤快速鍵中另外設定。

{%gist dearsherlock/33cb475c4e610a4085dc%}


若是background.js要顯示log，則需要點選擴充功能中的extension下方的察看檢視模式，然後再執行一次就會看到log。
![image](https://farm4.staticflickr.com/3944/15649129392_b3816062d2_o.png)
http://stackoverflow.com/questions/10257301/where-to-read-console-messages-from-background-js-in-a-chrome-extension

可以線上搜尋jquery的語法網站
http://jsfiddle.net/rajaadil/Phj9m/2/