---
layout: post
category : Bitbucket 
tagline: "Bitbucket教學"
tags : [Bitbucket,SVN,Git]
title: "Bitbucket Pages使用"

---

### 緣由

因為需要private又不想付錢的人，通常另外一個選擇就是bitbucket。
而bitbucket也是有類似github的pages功能，但沒那麼強大，只能說需要jekyll engine建置後的靜態網頁(就真的很靜態)
本來還以為有支援...@@

###設定你的webpage

1.依照下面的網站進行設定或是參考以下步驟
https://confluence.atlassian.com/display/BITBUCKET/Publishing+a+Website+on+Bitbucket

2.登入bitbucket帳號。

3.建立一個repository，前面是你的帳號，後面為.bitbucket.org。
格式為：accountname.bitbucket.org

4.從遠端拉取之後，此處的本地目錄最好是靜態網頁。是Jekyll產生的產物。而非jekyll的原始檔案（也就是他看不懂markdown檔案啦）

### 如何產生Jekyll靜態網頁？

1.從上面的遠端拉回之後，另外再建立一個repository，像我會建立如下，一個是source目錄，一個是真正的靜態網頁。

![image](https://farm9.staticflickr.com/8538/15520831407_bc02f9faca_o.png)

2.請到command line模式下，我是參考[以下網址](http://m00nlight.bitbucket.org/miscellaneous/2014/01/03/building-a-blog-using-jekyll-on-bitbucket.html)介紹。

{%gist dearsherlock/2ae83574d39e7ff2177c%}


3.雖然日後更新文章也是這樣，但我發現即使沒更改，但因為是靜態，會在每一頁的備註上打個註記說修改時間在何時，所以就會造成所有的網頁都有更新，這要在找看看解決方案。＠＠

但至少這樣是可以用的。
