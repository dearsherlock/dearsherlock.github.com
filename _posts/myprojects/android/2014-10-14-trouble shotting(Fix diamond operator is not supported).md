---
layout: post
category : Android 
tagline: "Android疑難雜症"
tags : [Android Develop,App,Android,Q＆A,資源檔]
title: "Android Studio 'diamond operator is not supported' 處理方法 "

---

### Android Studio "diamond operator is not supported" 處理方法

若有時用了新的語法如泛型，也許需要Android Studio改一下設定才能支援新的java語法。
請在build.gradle的android tag下加入以下代碼：

	 compileOptions {
	    sourceCompatibility JavaVersion.VERSION_1_7
	    targetCompatibility JavaVersion.VERSION_1_7
	}

另外需要請注意的是，該build.gradle是在app目錄下喔。如下圖
![][image-1]

[image-1]:	https://farm6.staticflickr.com/5605/15347380058_d42665e21d_o.png