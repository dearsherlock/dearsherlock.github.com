---
layout: post
category : Android 
tagline: "Debug Network in Android and Fiddler"
tags : [Android,Proxy,Fiddler]
title: "要使用Fiddler來監控Android程式的網路封包"

---

### 大要

大致上就是使用mac上的windows vm（只是為了fiddler比較習慣使用，且比較輕巧），然後在mac本機上開發android，而android上有一個app需要debug他的網路封包。

1.使用iphone來當ap，不要接在mac上，使用wifi來當通訊協定。先確定網路是ok的。
![image](https://farm8.staticflickr.com/7362/16439766585_6dbeef30df_o.png)

2.接下來把parallels打開，給他一個網路介面是wifi的，且不是共用網路
![image](https://farm9.staticflickr.com/8669/15817258144_f44ccce57e_o.png)

3.取得vm上的ip位置，將會在android手機上輸入他的位置(proxy server)，接下來請開啟fiddler，預設會是port 8888，在connection tab上允許遠端連線。

4.在手機上連線到iphone的ap位置，並且輸入vm的ip位置當做proxy。（因為都是同樣使用iphone當ap，只是繞到vm上的proxy）
![image](https://farm8.staticflickr.com/7390/16253892737_97253076e9_o.png)

5.這樣就完成了proxy設定

6.若要監控https,請下載cer憑證，然後在android 上安裝(安全性/憑證從裝置安裝)，安裝後就可以看到https的攔截內容。
