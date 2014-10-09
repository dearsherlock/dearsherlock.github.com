---
layout: post
category : Android 
tagline: "Android開發教學"
tags : [Android Develop,教學文章,推薦連結]
title: "如何啟動預設資料選項畫面"

---

#### 情境


![image][image-1]

websequence程式如下：  

 
	title Preference Activity
	note over MainActivity:按鈕觸發事件
	MainActivity->+MainActivity:raise clickPreferences(MenuItem item) 
	
	
	note over MainActivity:看是要啟動哪一種設定畫面，可以有多個，但與xml設定為1-1。
	
	MainActivity->MainActivity:startActivity(new Intent(this, PrefActivity.class))
	MainActivity-->PrefActivity:建立PreferenceActivity
	
	
	PrefActivity->PrefActivity:onCreate
	PrefActivity->PrefActivity:讀取Preference.xml，產生偏好設定排版
	
	PrefActivity->PrefActivity:啟動可供選項的畫面
	PrefActivity->ColorActivity:onCreate()
  

#### 模型與架構

以下是EA畫的，專案檔[在此][1]

![image][image-2]

#### 注意

原本的preferenceactivity中會動態呼叫class起來的程式區塊如下：

	<intent 
	        android:action="net.macdidi.myandroidtutorial.CHOOSE_COLOR"
	        android:targetPackage="net.macdidi.myandroidtutorial"
	        android:targetClass="net.macdidi.myandroidtutorial.ColorActivity"/>

需要將android:targetPackage這個屬性移除，才能夠正常執行。也許是後來的版本移除了，也或許是不能這樣寫。


[1]:	https://github.com/dearsherlock/dearsherlock.github.com/blob/master/_posts/Android%E9%96%8B%E7%99%BC.eap

[image-1]:	https://farm4.staticflickr.com/3951/15298734628_93c48c67b9_o.png
[image-2]:	https://farm6.staticflickr.com/5606/15484886175_0db9d5fdb8_o.png