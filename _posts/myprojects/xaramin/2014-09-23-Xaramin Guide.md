---
layout: post
category : Xaramin 
tagline: "Xaramin初認識"
tags : [Xaramin,iOS,Android,C#]
title: " Xaramin 研究"

---

## 認識Xaramin
本篇是先參考Youtube上對於Xaramin的介紹的筆記。Xaramin起源於Mono，可以在Linux上執行C#、ASP。

### 使用Xaramin的優點
- 維護成本減少
- 開發成本降低
- 共用程式碼
- 可整合ALM(但ios無法透過TFS來編譯，Apple規定一定要用MAC上的XCode編譯才可以，即使有Xaramin也一樣)

### Xaramin如何運作？
針對iOS SDK和Android SDK進行一對一對應。若是xaramin.ios就是對應到ios的，xaramin.android就是對應到android的。

### 為何要用Xaramin
在新版SDK發行時，就會同步發佈Xaramin，所以都會跟上原廠腳步，標榜同一天推出。
### Xaramin的限制
不能使用跟windows平台有關的namespace，如System.IO、Reflection、WPF框架。
Xaramin舊版不支援在Visual studio設計iOS UI，需要先在Xcode上拉UI。但是可以支援Android畫面設計。新版會解決這個問題。


### JIT和AOT的不同
AOT為Apple的編譯規定，需要事先編譯，如此將不支援動態Reflection的功能以及namespace，取得動態欄位等功能。
JIT為Java、C#、ASP之類的語言所使用，程式用到哪裡就編譯哪些然後再執行。

## 參考資料
- [https://www.youtube.com/watch?v=ELuFTTn1gS4][1]
- [ios app在開發後需要xcode來編譯 ][2] 
- [微軟提供給Xaramin的Azure服務元件][3]
- [如何共用一個呼叫webservice的函式庫(ios/winphone/android)][4]
- [進階APP開發][5]

## 安裝Xaramin後的新功能介紹
- [http://developer.xamarin.com/releases/android/xamarin.android\_4/xamarin.android\_4.16/#Xamarin.Android\_4.16.0][6]
- [http://developer.xamarin.com/releases/ios/xamarin.ios\_7/xamarin.ios\_7.4/#0][7]
- [http://developer.xamarin.com/releases/ios/xamarin.ios\_8/xamarin.ios\_8.0/#0][8]

[1]:	https://www.youtube.com/watch?v=ELuFTTn1gS4
[2]:	https://www.youtube.com/watch?v=ELuFTTn1gS4#t=2920
[3]:	https://www.youtube.com/watch?v=ELuFTTn1gS4#t=2740
[4]:	/Volumes/C/Dynasty%20Warriors%208
[5]:	https://www.youtube.com/watch?v=d08jEEMVDPM
[6]:	http://developer.xamarin.com/releases/android/xamarin.android_4/xamarin.android_4.16/#Xamarin.Android_4.16.0
[7]:	http://developer.xamarin.com/releases/ios/xamarin.ios_7/xamarin.ios_7.4/#0
[8]:	http://developer.xamarin.com/releases/ios/xamarin.ios_8/xamarin.ios_8.0/#0