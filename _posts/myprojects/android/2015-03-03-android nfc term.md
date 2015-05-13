---
layout: post
category : Android 
tagline: "名詞解釋"
tags : [Android,Proxy,Fiddler]
title: "NFC入門"

---

### AAR（Android Application Record）

使用NdefRecord的static產生AAR的方法來避免Intent傳來傳去的時候不知道要傳給哪一個APP。

特色如下：

a.可以和intent篩檢方法來過濾nfc tag。
不過和intent篩檢的差異大致如下：
- intent篩檢可以控制到activity，AAR只能是app等級。
- 一個app裡面可以有多個intent篩檢，AAR只能有一個。

b.若使用者沒有裝app，用AAR傳送可以觸發使用者進行下載app。


