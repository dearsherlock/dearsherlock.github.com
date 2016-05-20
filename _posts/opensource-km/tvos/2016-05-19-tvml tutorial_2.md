---
layout: post
category : AppleTV
tagline: "Apple TV Hello World (2)-重構你的JS程式，加上攔錯和使用presentModal"
tags : [fans,social_network,facebook,growth_hack]
title: "Apple TV Hello World (2)-重構你的JS程式，加上攔錯和使用presentModal"
imagefeature: https://farm8.staticflickr.com/7527/27015435302_97d4b07d0f_o.jpg
covereffect: push

---

### 繼續細化Javascript端的程式，使用navigationDocument.presentModal

我們把之前寫的js重新建構，讓他更物件導向化。
{%gist dearsherlock/07c4a98a6eb5c0af1bbdea8074903411%}


navigationDocument：內建的物件，用來把TVML載入到畫面中或是把畫面放到Flow裡。
navigationDocument.presentModal(xml)：把TVML載入到畫面中呈現。

接下來我們把剛剛用過的application.js的啟動函式改一下。
{%gist dearsherlock/f54c30a7a4a61ec7df5ba0710cf9d2de%}

主要是匯入presenter.js，然後用剛剛的createAlert來建立TVML

執行起來，可以看到是ok的，就表示沒問題啦～tvmlkit端都不需要改。
![image](https://farm8.staticflickr.com/7489/27112155015_2f74f4ffd2_o.png)


### 繼續重構Javascript端的程式，攔截錯誤
有時載入檔案錯誤或是其他原因會有錯誤，需要知道怎麼錯的，可以加上攔截錯誤程式，不可以用Presenter來呈現，因為他可能本身就還沒載入。
{%gist dearsherlock/61abcbd8377caf24de7a241fafd991e0%}

測試一下，可以故意把載入presenter.js寫錯位置，看看是否能出現以下的錯誤畫面。
![image](https://farm8.staticflickr.com/7748/27078960746_ec143210e9_o.png)


### 繼續重構Javascript端的程式，使用navigationDocument.presentModal

DOMParser ：可以把一個TVML的字串轉換成物件導向的畫面（還記得tutorial 1中用的createAlert嗎？）而這個物件相當的耗資源，所以你盡量只建立一次就好(Singleton)