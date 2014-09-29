---
layout: post
category : Android 
tagline: "解決資源檔中跳脫字元問題（Error:Apostrophe not preceded by）"
tags : [Android Develop,App,Android,Q&A,跳脫字元,資源檔]
title: "Android疑難雜症"

---
{% include JB/setup %}

###解決資源檔中跳脫字元問題（Error:Apostrophe not preceded by）

才剛打開專案，然後才改個HelloWorld預設顯示名稱就給我compiler出錯是怎樣？！
如下：
![image](https://farm4.staticflickr.com/3835/15387327202_e46864a895_o.png)

出現了Error:Apostrophe not preceded by \ (in Hello Sherlock's Android world!)
搜尋了一下，原來是資源檔裡面需要特別注意跳脫字元(如這次是app/src/main/res/values/strings.xml)

請將以下

   ` <string name="hello_world">Hello Sherlock's Android world!</string>`
改成以下就OK了！

`    <string name="hello_world">Hello Sherlock\'s Android world!</string>`