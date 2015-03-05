---
layout: post
category : Android 
tagline: "NFC p2p sample"
tags : [Android,Proxy,Fiddler]
title: "NFC入門P2p"

---


### NFC對傳資料範例

可以參考wrox的電子書

範例請到[這裡](www.wrox.com/remtitle.cgi?isbn=1118380096)下載第八章中的第一個範例，使用NFC來聊天。

Activity先實作一下NFC的介面，聲明要如何製作message
{%gist dearsherlock/feda17896380cfaed6de%}

首先先初始化一下
{%gist dearsherlock/8fec1aefd6b6b915822b%}

在onresume(和使用者互動時觸發)的時候進行解析
{%gist dearsherlock/d1184df8f2c4927a7ba5%}

接到訊息後的處理範例
{%gist dearsherlock/e2602340c32b81a4f437%}

在AndroidMainfest.xml也要特別聲明過濾條件

{%gist dearsherlock/9cbcf6061eb114143ef1%}

這樣就可以了。


### 避免重新呼叫oncreate
若是activity已經存在畫面的操作，不想要重新refresh畫面，則使用以下方式。
大致上就是傾聽的方式改變，送訊息的方式倒是不變

屬性多宣告了一些
{%gist dearsherlock/2826984fef05a306fcee%}

初始化需要多做一些
{%gist dearsherlock/e0907585f50ec3f93114%}

onresum的時候需要改變一點，改用另外一個行為flag(ACTION_TECH_DISCOVERED)

{%gist dearsherlock/bff5ba3b3157ea9f90b7%}

解開資料範例
{%gist dearsherlock/a4f3741a78517a4249ce%}

如此就不會產生新的activity，造成困擾