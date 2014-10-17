---
layout: post
category : Android 
tagline: "Jekyll疑難雜症"
tags : [Jekyll,Regenerate Fail,重新產生頁面,錯誤訊息,Actor crashed,ASCII]
title: "更新頁面後無法產生新網頁預覽"

---

### 更新頁面後無法產生新網頁預覽

更新了ShellShock patch之後出現了這個問題，還以為是該patch的問題，原來不是。
是剛好這幾次都用中文檔案命名，所以會出現以下的錯誤訊息。後來改用英文就好了。
但這問題其實也不大，只是重新產生更新頁面的時候會跑不出來，若關閉server再重開還是看的到更新資料。

{%gist dearsherlock/330a74ea379f7e776211 %}

或是如下圖  

![image][image-1]

[image-1]:	https://farm4.staticflickr.com/3918/15201758650_308982bbf2_o.png