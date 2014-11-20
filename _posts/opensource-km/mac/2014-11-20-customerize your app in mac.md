---
layout: post
category : Mac 
tagline: "Automator真好用"
tags : [mac,automator,start,open,security,parameter]
title: "自定你的Chrome應用程式(加上啟動參數)"

---

###前言
因為Mac不像Windows的應用程式可以直接copy捷徑加參數，所以若要啟動app需要加上一些參數的時候比較麻煩一點點。
以下舉一個例子：要在chrome啟動的時候加上參數 --allow-file-access-from-files --disable-web-security

###步驟

1.先開啟Automator，新增『應用程式』  
2.點選執行Shell指令。  
3.修改Shell內容  

結果如下： 
 
![image](https://farm8.staticflickr.com/7573/15832324442_84473e2391_o.png)

4.儲存在任何地方都可以  
5.接下來要修改icon，不然預設是automator的icon。   
6.請用finder找到你的真正chrome，選擇檢視簡介(或是Ctrl+i)  
7.點選一下左上角，會陷下去一點點，然後複製(Ctrl+C)  

![image](https://farm8.staticflickr.com/7513/15645626607_575fd98ea1_o.png)  

8.打開你剛剛建立的app(捷徑)，也是點選簡介(或是Ctrl+i)   
9.點選一下左上角，會陷下去一點點，然後貼上(Ctrl+V)   
10.你的程式就會建立了。  

![image](https://farm8.staticflickr.com/7571/15832350922_d709721af3_o.png)
