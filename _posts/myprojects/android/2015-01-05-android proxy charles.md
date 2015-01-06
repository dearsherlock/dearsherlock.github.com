---
layout: post
category : Android 
tagline: "Android with Charles"
tags : [Android,Proxy,Charles]
title: "Android 進行Proxy Debug"

---

###緣起
身為一個開發人員，會debug http也是很正常的。
而MAC上並沒有Fiddler可以用，但有Charles，現在最新的3.9.3。
介面其實跟Fiddler有些差異，複雜了一點，但功能一樣強大。

![image](https://farm9.staticflickr.com/8625/16204826052_0d8ed1f323_o.png)


###步驟

1.若你要針對Android模擬器進行debug 網路封包，我是推薦裝Genymotion。速度比較快也穩定。

2.裝好Charles後，請參考[這個網頁](http://www.charlesproxy.com/documentation/using-charles/ssl-certificates/)進行設定，若是本機，則請依照指令下載憑證安裝。

3.若你是虛擬機，不管是ios或是android其實都很像，在虛擬機中[下載此憑證]( http://www.charlesproxy.com/charles.crt)安裝，表示你是認真的～＠＠ 安裝後會要求你螢幕鎖定要設定密碼，避免有心人亂利用。中間會問你要套用在哪個網路上，選WiFI即可。

4.裝好後，請到你的Wifi網路，選擇進階設定，然後把proxy設定為Charles專用的：10.0.3.2:8888
![image](https://farm8.staticflickr.com/7466/15583285904_cbc64e3aac_o.png)

5.設定好之後就可以在MAC本機上的Charles監看了～可以發現原本是亂碼的SSL連線，已經變成明碼了。
![image](https://farm8.staticflickr.com/7481/16204901592_1433a1e4a3_o.png)




