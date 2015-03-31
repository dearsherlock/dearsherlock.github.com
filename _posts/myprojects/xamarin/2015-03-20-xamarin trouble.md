---
layout: post
category : Xamarin 
tagline: "Xamarin Trouble Shooting"
tags : [Xamarin,Trouble Shooting]
title: "Xamarin 疑難雜症"


---



### project not built in active configuration:
重新把project unload 然後載入一次。

### Error CS0012: The type `System.Object' is defined in an assembly that is not referenced. Consider adding a reference to assembly 

/Volumes/MySD/MyMacXamarinStudioProj/MVVMTest/DailyDilbert/DailyDilbert.Touch/Setup.cs(23,23): Error CS0012: The type `System.Object' is defined in an assembly that is not referenced. Consider adding a reference to assembly `System.Runtime, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a' (CS0012) (DailyDilbert.Touch)

重新刪除bin/obj，然後重新開啟xamarin



/Volumes/MySD/MyMacXamarinStudioProj/MVVMTest/DailyDilbert/DailyDilbert.Touch/MyViewController.cs(36,36): Error CS0030: Cannot convert type `System.nfloat' to `CoreGraphics.CGRect' (CS0030) (DailyDilbert.Touch)



Deployment failed because of an internal error: Failure [INSTALL_FAILED_UPDATE_INCOMPATIBLE]


Deployment failed. Minimum Android version not supported by device.

### Deployment failed because the device does not support the package's minimum Android version

Deployment failed because the device does not support the package's minimum Android version. You can change the minimum Android version in the Android Application section of the Project Options.

Deployment failed. Minimum Android version not supported by device.

---->更改最低版本，但是會出現下面另外一個錯誤。

#### [INSTALL_FAILED_UPDATE_INCOMPATIBLE]
Deployment failed because of an internal error: Failure [INSTALL_FAILED_UPDATE_INCOMPATIBLE]

Deployment failed. Internal error.

----> 到Android設備中的設定的應用程式移除app，重新執行可以部署，但是runtime error 如下：

{%gist dearsherlock/188978e03eb3c69d7513%}

看到網路上有人這樣解：
http://notesfun.blogspot.tw/2014/11/xamarinunable-to-find-application_5.html

需要在csproj的配置中修改 AndroidUseLatestPlatformSdk 屬性為 false。


### ios build error
/Volumes/MySD/MyMacXamarinStudioProj/MVVMTest/DailyDilbert/DailyDilbert.Touch/MTOUCHTASK: Error MT0047: The minimum deployment target for Unified applications is 5.1.1, the current deployment target is '3.2'. Please select a newer deployment target in your project's iOS Application options. (MT0047) (DailyDilbert.Touch)

--->修改選項中的目的版本，改成7.2以上都可以。



### Add Nuget for xamarin.android.support.v7.appcompat
會得到以下的錯誤。
{%gist dearsherlock/5518fce82ef58588f941%}

請更新你的專案設定，設定Target為api 21，而最低版本仍然可以保留。
如同下面這篇所說的，圖中有設定
http://blog.xamarin.com/android-tips-hello-material-design-v7-appcompat/


### android support library v4 vs v13
https://kb.xamarin.com/customer/portal/articles/1698191-smarter-xamarin-android-support-v4-v13-nuget-packages



### 如何在xamarin studio 中指定版本下載nuget?
http://forums.xamarin.com/discussion/25810/how-do-i-downgrade-a-nuget-package-in-xamarin-studio

若不行則直接編輯.csproj目錄下的 packages.config。

內容範例  
{%gist dearsherlock/b27e20552b027f2365e1%}
xxx.csproj也要改  
{%gist dearsherlock/a22f75bc16175b238921%}