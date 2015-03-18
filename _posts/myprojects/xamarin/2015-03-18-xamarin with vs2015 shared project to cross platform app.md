---
layout: post
category : Xamarin 
tagline: "跨平台開發"
tags : [Xamarin,Visual Studio 2015,Android,iOS,Shared Project]
title: "Xamarin開發"

---
### 緣起
本篇主要參考[這裡](https://msdn.microsoft.com/zh-tw/library/dn879698%28v=vs.140%29.aspx)。
主要解決如何使用Xamarin來做跨平台App，另外也介紹了Shared Project，補充了上面連結中的iOS程式碼。並且上傳到github上。

三種平台的專案 [Github位置](https://github.com/dearsherlock/XamarinCrossApp_Weather)

### 直接看結果
切記，若要換模擬器或是在不同平台上debug（他也可以一次debug不同平台），記得要設定set as startup project


####iOS app＠模擬器
會啟動host上的模擬器，而非Parallel虛擬機中的模擬器

啟動畫面
![image](https://farm9.staticflickr.com/8675/16228926764_fed9776d58_o.png)
輸入查氣象
![image](https://farm9.staticflickr.com/8572/16851298085_134f5b4545_o.png)

####iOS實機執行
會啟動USB連接在Host MAC的iPhone

![image](https://farm8.staticflickr.com/7642/16663757758_30c79d607e_b.jpg)

#### Android 模擬器展示
在Host Mac端裝上Xamarin的Android Play模擬器或是Vs.net內建的模擬器(AVD_Galaxynexus...但啟動時間超久的)，我試過genymotion是沒辦法（因為網路的關係，Genymotion會啟動在自己的網路環境，讓Parallel存取不到）。
Host Mac本機上的Xamarin Android Player
![image](https://farm9.staticflickr.com/8571/16663812798_a04c9cac74_o.png)

VM中的虛擬機(想當然爾很慢)
![image](https://farm8.staticflickr.com/7644/16665302309_5f5459d1b2_o.png)


#### Android 實機展示
把Android 手機連接上，並且指定裝置給VM(像我是用Paraller)，vm會裝上HTC的android driver(請到裝置管理員那裏把有問號的裝置更新驅動程式)，然後請用adb的指令看有沒有你的裝置，若有就表示安裝成功。直接執行就可以了。
`adb devices`

![image](https://farm9.staticflickr.com/8717/16850182462_4772861812_b.jpg)

### Windows Phone 虛擬機展示
在虛擬機中也是啟動十分的久，但Windows Phone的虛擬機是漂亮許多。
![image](https://farm9.staticflickr.com/8584/16665348029_7107ec9a2e_o.png)

執行畫面
![image](https://farm8.staticflickr.com/7284/16850608601_36e9b11db3_o.png)

### 程式片段

先補上iOS的程式碼片段，Android的和Windows Phone的

{%gist dearsherlock/cd62d13867b9f9ed02d1%}

若要讓鍵盤在輸入後隱藏，可以做以下處理

{%gist dearsherlock/c02784411001ed0b9abb%}

版面layout
{%gist dearsherlock/cc93f1406ad956f8c532%}

layout preview
![image](https://farm9.staticflickr.com/8568/16664394260_202ffb367b_o.png)


若是Host Mac插上iPhone後，在Run/Debug 面板上就會有對應的裝置出現
![image](https://farm9.staticflickr.com/8740/16825913696_8ca72781b6_o.png)

選擇虛擬機，也會有對應的虛擬機清單
![image](https://farm9.staticflickr.com/8733/16850641942_85eab05370_o.png)




###疑難雜症
#### 在Mac上執行Xamarin 虛擬機，讓VM中的VS.net進來debug


http://developer.xamarin.com/guides/android/deployment,_testing,_and_metrics/android-player-with-visual-studio-in-vm/



#### 在實體機器上debug
http://developer.xamarin.com/guides/android/getting_started/installation/set_up_device_for_development/
