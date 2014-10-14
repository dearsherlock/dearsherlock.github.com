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