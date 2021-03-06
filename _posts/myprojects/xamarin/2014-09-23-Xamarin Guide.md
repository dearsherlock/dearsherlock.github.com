---
layout: post
category : Xamarin 
tagline: "Xamarin初認識"
tags : [Xamarin,iOS,Android,C#]
title: " Xamarin 研究"

---

## 認識Xamarin
本篇是先參考Youtube上對於Xamarin的介紹的筆記。Xamarin起源於Mono，可以在Linux上執行C#、ASP。

### 使用Xamarin的優點
- 維護成本減少
- 開發成本降低
- 共用程式碼
- 可整合ALM(但ios無法透過TFS來編譯，Apple規定一定要用MAC上的XCode編譯才可以，即使有Xamarin也一樣)

### Xamarin如何運作？
針對iOS SDK和Android SDK進行一對一對應。若是Xamarin.ios就是對應到ios的，Xamarin.android就是對應到android的。

### 為何要用Xamarin
在新版SDK發行時，就會同步發佈Xamarin，所以都會跟上原廠腳步，標榜同一天推出。
### Xamarin的限制
不能使用跟windows平台有關的namespace，如System.IO、Reflection、WPF框架。
Xamarin舊版不支援在Visual studio設計iOS UI，需要先在Xcode上拉UI。但是可以支援Android畫面設計。新版會解決這個問題。


### JIT和AOT的不同
AOT為Apple的編譯規定，需要事先編譯，如此將不支援動態Reflection的功能以及namespace，取得動態欄位等功能。
JIT為Java、C#、ASP之類的語言所使用，程式用到哪裡就編譯哪些然後再執行。

### 參考資料
- [https://www.youtube.com/watch?v=ELuFTTn1gS4][1]
- [ios app在開發後需要xcode來編譯 ][2] 
- [微軟提供給Xamarin的Azure服務元件][3]
- [如何共用一個呼叫webservice的函式庫(ios/winphone/android)][4]
- [進階APP開發][5]

### 安裝Xamarin後的新功能介紹
- [http://developer.xamarin.com/releases/android/xamarin.android\_4/xamarin.android\_4.16/#Xamarin.Android\_4.16.0][6]
- [http://developer.xamarin.com/releases/ios/xamarin.ios\_7/xamarin.ios\_7.4/#0][7]
- [http://developer.xamarin.com/releases/ios/xamarin.ios\_8/xamarin.ios\_8.0/#0][8]

### 各種版本比較
![image](https://farm4.staticflickr.com/3943/15514574718_e0a976b74a_o.png)

###實際案例
![image](https://farm4.staticflickr.com/3946/15515253750_a9a1c43d44_o.png)

![image](https://farm4.staticflickr.com/3943/15701662442_b653d91f8b_o.png)

![image](https://farm8.staticflickr.com/7523/15698172071_757a27bc92_o.png)

![image](https://farm4.staticflickr.com/3949/15514210219_f10416b222_o.png)

[1]:	https://www.youtube.com/watch?v=ELuFTTn1gS4
[2]:	https://www.youtube.com/watch?v=ELuFTTn1gS4#t=2920
[3]:	https://www.youtube.com/watch?v=ELuFTTn1gS4#t=2740
[4]:	/Volumes/C/Dynasty%20Warriors%208
[5]:	https://www.youtube.com/watch?v=d08jEEMVDPM
[6]:	http://developer.xamarin.com/releases/android/xamarin.android_4/xamarin.android_4.16/#Xamarin.Android_4.16.0
[7]:	http://developer.xamarin.com/releases/ios/xamarin.ios_7/xamarin.ios_7.4/#0
[8]:	http://developer.xamarin.com/releases/ios/xamarin.ios_8/xamarin.ios_8.0/#0