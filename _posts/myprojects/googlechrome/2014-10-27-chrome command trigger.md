---
layout: post
category : Chrome 
tagline: "Chrome Extension開發"
tags : [Chrome]
title: "Chrome開發Extension快速鍵觸發擷取畫面上所要的資訊"

---

###前言
目的在於用快速鍵來觸發chrome，然後擷取畫面上的資料。以本範例而言，就是專門抓flickr上的頁面，找看看有沒有css=main-photo屬性的img，然後抓取他的src。所以會用到的技術有：
1.如何觸發chrome的快速鍵
2.載入jquery
3.使用jquery 來擷取網頁元件

###步驟
1.先把jquery檔案放在一起，然後設定manifest.json，設定一些資料。這裡比較關鍵的是，可能因為是未封裝的extension，所以快速鍵對應要自己另外設定，不能寫在json設定檔裡。這點倒是很怪。
{%gist dearsherlock/6c57a335cdc14db174cd%}

2.設定好json之後，js檔案室重點，可以看到下方的程式碼有送出訊息，也有接收訊息的方式。這裡也是不懂搞很久。
傳送訊息
{%gist dearsherlock/47eac06cb643af89a45f%}

接收訊息
{%gist dearsherlock/d619c8990ff51e021c5f%}

3.載入jquery，是要在menifest.json那裡設定就好，其他都不大需要額外載入。

4.請見如下進行解析html取出我要的元件內容。

