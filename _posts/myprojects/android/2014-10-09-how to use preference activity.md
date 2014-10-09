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
	MainActivity->MainActivity:startActivity(new Intent(this, PrefActivity.class))
	
	PrefActivity->PrefActivity:onCreate
	PrefActivity->PrefActivity:讀取Preference
	PrefActivity->PrefActivity:啟動可供選項的畫面
  

#### 模型與架構

以下是EA畫的，專案檔[在此][1]

![image][image-2]




[1]:	https://github.com/dearsherlock/dearsherlock.github.com/blob/master/_posts/Android%E9%96%8B%E7%99%BC.eap

[image-1]:	https://farm3.staticflickr.com/2949/15297937989_cbe7e886c3_o.png
[image-2]:	https://farm6.staticflickr.com/5606/15484886175_0db9d5fdb8_o.png