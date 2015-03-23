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


### 非同步寫法

參考以下（xamarin官網有點寫錯，且ios沒有click，只有TouchUpInside，請參考[Xamarin官網處理Click](http://developer.xamarin.com/recipes/ios/standard_controls/buttons/handle_clicks/)）

ios使用labmda expression（android也是一樣寫法，只是改成click）  
{%gist dearsherlock/6f719dda1c423b865769%}

android使用anonymous delegate（ios也可以一樣寫法，只是改成TouchUpInside）  
{%gist dearsherlock/306def107719040f0ddc%}

