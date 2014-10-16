---
layout: post
category : Android 
tagline: "Android疑難雜症"
tags : [Android Develop,App,Android,Q＆A,資源檔]
title: "解決R.java檔不存在問題（Error: package R does not exist）"

---

### 解決R.java檔不存在問題（Error: package R does not exist）

使用Android Studio剛新手可能會出現以下問題，尤其是copy別人的程式碼，更會如此！  

![image][image-1]

解決方法就是把AndroidManifest.xml上方的package改掉，或是加上refefence/import。


	<manifest xmlns:android="http://schemas.android.com/apk/res/android"
	package="com.example.sherlock.android_as_tutorial">
	
	<application android:allowBackup="true"
	    android:label="@string/app_name"
	    android:icon="@drawable/ic_launcher"
	    android:theme="@style/AppTheme">
	
	</application>
	
	~</manifest>~


[image-1]:	https://farm6.staticflickr.com/5597/14911858614_8647aa0cba_o.png