---
layout: post
category : Xamarin 
tagline: "跨平台開發"
tags : [Xamarin,Visual Studio 2015,Android,iOS,Camera]
title: "Xamarin.Camera開發Camera功能"

---

### 參考Source Code
http://developer.xamarin.com/recipes/android/other_ux/camera_intent/take_a_picture_and_save_using_camera_app/



### 設定android app需要有相機的權限
{%gist dearsherlock/7019577e77f36fb922be%}

### File

如果有需要用到檔案的，請用Java.IO，而非微軟自己的System.IO


### 呼叫拍照的畫面

`Intent intent = new Intent(MediaStore.ActionImageCapture);`


### 呼叫Zxing進行QRCode解析
已經有Nuget套件可以下載。若是Android請參考如下
![image](https://farm8.staticflickr.com/7584/16683262858_52e8f7b191_o.png)
