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

### 無法進行debug
![image](https://farm8.staticflickr.com/7620/16803249938_6d1765ab3d_o.png)
到solution的視窗中，把android的project後面的deploy打勾就可以了
![image](https://farm8.staticflickr.com/7585/16991011125_177e5f31d0_o.png)

### 注意namespace
若出現以下，請注意是否xml中tag已經有指名了tag namespace，若有就不用特別重複指定，ex:
以下的radius、fillcolor都是EInvoiceDetailNFC.Android.CirclePageIndicator類別中已經有定義，所以不須要再特別宣告。

{%gist dearsherlock/07741ec0b40e321f36cc%}
就不需要特別再指定：
       `xmlns:app="http://schemas.android.com/apk/res/ViewPagerIndicator.ViewPagerIndicator"`    
不然會有以下的錯誤：
{%gist dearsherlock/c1755606e1b6613bf0ab%}




### 出現error MSB6006: "aapt.exe" exited with code 1

1>C:\Program Files (x86)\MSBuild\Xamarin\Android\Xamarin.Android.Common.targets(794,2): error MSB6006: "aapt.exe" exited with code 1.

通常是發生在新加檔案到resource目錄下，且檔名不符合java 命名規定，可能是有括弧等符號。移除後我就可以了～

因為若檔名有()，變成resource時變數怎麼取呢？所以會有這個問題！

### No resource identifier found for attribute 'selectedBold' in package ...

1>Z:\Volumes\MySD\Download\viewpager\viewpager_source_WinVS\ViewPagerIndicator\ViewPagerIndicator\Resources\layout\themed_titles.xml(15): error : No resource identifier found for attribute 'selectedBold' in package 'ViewPagerIndicator.ViewPagerIndicator'因為Android有設定Package Name，所以若xml中有定義需要存取app中的resource的時候就需要設定正確。

ex: 像以下的就配不起來就會出錯。  
{%gist dearsherlock/dd0974c26425632c805a%}
![image](https://farm8.staticflickr.com/7606/16993119586_3677020af7_o.png)
    
#### 出現套件無法裝在特定的project
![image](https://farm8.staticflickr.com/7590/17046749186_189f67f941_o.png)請檢查你的專案以及package作者頁面有寫的支援項目
打開專案設定看target:

![image](https://farm8.staticflickr.com/7628/17046768386_012952bec9_o.png)

然後去看package(在此是mvvmcross)所支援的項目
像我是把.csproject中的以下兩個值改掉就可以了
 `
 <TargetFrameworkProfile>Profile78</TargetFrameworkProfile> 
   `    `   
 <TargetFrameworkVersion>v4.5</TargetFrameworkVersion> `   
 
### runtime出現以下訊息找不到明明有的方法
 ： System.MissingMethodException: Method not found: 'Cirrious.MvvmCross.ViewModels.MvxNavigatingObject.ShowViewModel'.
通常是其中有一個project的抓的nuget package版本不同，我是這樣發現這個問題的。
 
 
### compiler time 一直出現error cs0103
error CS0103: The name 'ThreadPool' does not exist in the current context

回復到MVVMCross 3.1.1就可以＠＠### 版本對應
MVVMCross 3.1.1 可安裝在以下（3.2.1都不行）
<TargetFrameworkProfile>Profile158</TargetFrameworkProfile> <TargetFrameworkVersion>v4.0</TargetFrameworkVersion>
### 找不到swich "Switch" could not be found

"Switch" could not be found因為是API以上才有Switch，所以需要把Target改一下，在API14以上。
### 出現No resource identifier found for attribute 'MvxBind' in package 'xxx.xx'
先確認xx.xx是你的package name，可以在下面進行確認：
![image](https://farm8.staticflickr.com/7659/16464829803_6d11676533_o.png)若是，則改成以下也可以。
     xmlns:local="http://schemas.android.com/apk/res-auto
### 新加入的Resource找不到
新加上的圖片或是字串或是style都有可能找不到，就重新rebuild，然後重新打開vs，就可以了。
### android 的文字輸入需要設成電話號碼
把inputtype設成phone
* [全部的inputtype解釋](http://developer.android.com/reference/android/widget/TextView.html#attr_android%3ainputTypef)### 要如何在viewmodel裡面呼叫瀏覽器做事？
[參考技術文章](http://stackoverflow.com/questions/16616774/mvvmcross-how-to-navigate-to-something-besides-a-viewmodel)
到nuget下載mvvmcross web搜尋，對android和core專案都下載。
Log如下：
{%gist dearsherlock/3758f951bfea7e1766c1%}

使用方式如下
{%gist dearsherlock/3a1ea8f7d1c1a2b734f9%}### Android 的文字輸入方塊檢查原則以及顯示錯誤
[Android的作法](http://javatechig.com/android/edittext-validation-in-android-example)

mvvmcross的版本：
https://github.com/Agies/MVVMCross.Plugins.Validation


### 其他參考網站
http://benjaminhysell.com/archive/category/mvvmcross/

### 外掛收集
https://github.com/MvvmCross/MvvmCross/wiki/MvvmCross-plugins#ballcontrol
### mvvmcross外掛可以進行互動
確認，提示https://github.com/brianchance/MvvmCross-UserInteraction
### MVVM's viewmodel 回收機制
https://github.com/MvvmCross/MvvmCross/wiki/View-Model-Lifecycle#viewmodel-deactivation-activation-and-destruction
### viewpager範例
http://blog.ostebaronen.dk/2013/07/fragments-and-viewpager-with-mvx.html
完整的實作：https://github.com/Adam--/MvxViewPager
### android tabwidget的設定
http://www.dotblogs.com.tw/alonstar/archive/2012/04/18/android_tabhost.aspx
### 如何避免xamarin 移除舊版（保留舊版的資料，只更換程式）
http://stackoverflow.com/questions/26364316/how-to-prevent-android-app-from-getting-uninstalled-during-deployment-with-xamar
### 遇上adb devices中的device是offline
使用run as administrator,進行android命令。
[參考這篇](http://stackoverflow.com/questions/14993855/android-adb-device-offline-cant-issue-commands)

然後進入c:\programe file (86)\android\android-tools\tools\
執行以下：`android update sdk --no-ui
`進行更新。（上次是發生在5.1更新後，本地沒有更新sdk到api22，裝置又互相在mac和pc vm上使用。）### 自定converter與特定屬性做binding
關鍵字是MvxBaseAndroidTargetBinding,以及setup.cs中的FillTargetFactories需要復寫

http://slodge.blogspot.tw/2013/02/android-textview-color-binding_15.html
### MvxImageView
No IMvxImageHelper registered - you must provide an image helper before you can use a MvxImageView


Solution:You also need to include the MvvmCross File and DownloadCache Plugins, or else you'll get this error
### MvxImageView的Imagesrc寫法

 ImageUrl= "res:icon"icon小寫，原本的圖檔是在Resources/Drawable/Icon.png
[參考這裡](http://stackoverflow.com/questions/20940360/mvximageview-cant-bind-imageurl-to-local-resource)### 取得裝置id

https://github.com/Cheesebaron/Cheesebaron.MvxPlugins/tree/master/AppId/Droid
--->
可能會遇上plugin掛不上去的問題，請用
{%gist dearsherlock/a4f7eea1c78302688684%}


https://www.nuget.org/packages/Xam.Plugin.DeviceInfo/


### 遇上https無法抓取的問題（會有TSLexception）

請加上以下這句就可以了（在android view project）
{%gist dearsherlock/513ac60bfd6ab83a2523%}


### 啟動時發生runtime error ，無法產生service instance




### 發生sqlite one to many對應不支援
{%gist dearsherlock/d29c61c8536cfe9edba9%}  
安裝sqlite extension
https://bitbucket.org/twincoders/sqlite-net-extensions

但是和原本的sqlite會衝突，請將以下各dao implement class中的參照
移除
using Cirrious.MvvmCross.Plugins.Sqlite;改使用
using Cirrious.MvvmCross.Community.Plugins.Sqlite;以下的bootstrap需要移除：
{%gist dearsherlock/e3cbb4dafe5133fad945%}改變成以下的bootstrp:
{%gist dearsherlock/36ff2c6995c0148653bd%}

### ViewModel中的屬性進行非同步處理
http://stackoverflow.com/questions/25382248/mvvmcross-async-and-await-method-in-pcl

### 按鈕在兩邊，中間的空白要佔滿元件

{%gist dearsherlock/8b2be07793b4b16d8d9f%}


### 出現莫名的aapt.exe exited with code 1
通常是加進來的檔案（圖檔名稱）違反java命名，可能有-等字眼。移除後就可以了。


### android weight
http://jimmy319.blogspot.tw/2011/09/android-layoutweight-viewproportionate.html

### mvvmcross 檢查網路狀態之sample
https://github.com/Cheesebaron/Cheesebaron.MvxPlugins/blob/master/Samples/Connectivity/Core/ViewModels/FirstViewModel.cs



### sqlite 有onetomany卻沒有找到insertwithchild?
請多加上:
using SQLiteNetExtensions.Extensions;


### 要印出log
                System.Diagnostics.Debug.WriteLine("Invoice Count=" + i + ", Success Insert Current Invoice =" + invoiceInfo.InvoiceNumber);


### 若有成功過但是onetomany不行～
可能是app的db版本，請清除重建立


### 1-many寫法
http://stackoverflow.com/questions/24665304/sqlite-net-extensions-example-on-xamarin-forms


### mvvmcross 傳送頁面資料限制
一定要是簡單型態，因為是透過url傳送
https://github.com/MvvmCross/MvvmCross/wiki/ViewModel--to-ViewModel-navigation#navigation-with-parameters---using-a-parameter-object


### 解決傳送複雜物件問題
http://stackoverflow.com/questions/19058173/passing-complex-navigation-parameters-with-mvvmcross-showviewmodel


### 解決有時有些表格沒有PK
發現是有些表格混用了sqlite的extension和標準版的sqlite-net所導致，檢查
不要出現：
using Cirrious.MvvmCross.Plugins.Sqlite;
應該是要：
using Cirrious.MvvmCross.Community.Plugins.Sqlite;


### 解決1-many不正常的問題
以下範例中，應該是會正常，有一次不正常是因為我把insert update都拆分到service層，沒有在同一個transaction,就會導致這樣。而child表格若有出現沒有建立，是因為沒有做createtable的動作（不會自動建立）

{%gist dearsherlock/39fb5ded48d7e0feef19%}


### 手勢滑動處理
官方開發人員提供

http://motzcod.es/post/82102717747/xamarin-android-swiperefreshlayout-for-mvvmcross

自定listvie有滑動手勢
https://github.com/chrisriesgo/android-swipelistview-sharp
作者
http://chrisriesgo.com/android-swipe-listview-for-xamarin/


### APP名稱
如果是mvvmcross的專案，他的app名稱會在Splashscreen.cs中的label
請見這篇的討論：
http://forums.xamarin.com/discussion/1178/change-app-name-on-main-screen


### 產生qrcode
原本使用Acr.MVVMCROSS.PLUGINS.Barcodescanner產生barcode
後來作者自己建議使用：Acr.BarCodes
兩個project都要include，參考[這裡](https://github.com/aritchie/barcodes)


### 水平listview
目前android版的並沒有支援，自定元件可以解決
http://blog.ostebaronen.dk/2012/12/horizontal-listview-for-mono-for-android.html


### Binding特殊寫法
        local:MvxBind="{'Text':{'Path':'TestString'}}"
 			local:MvxBind="{'Text':{'Path':'Id'}}"
 			
 			
### update control
MvxBindableListAdapter-->MvxAdapter

MvxBindableViewHelpers-->MvxAttributeHelpers

MvxAndroidBindingResource-->加上using


MvxAndroidBindingResource.Instance.BindableListViewStylableGroupId---->MvxAndroidBindingResource.Instance.BindingStylableGroupId, 

MvxAndroidBindingResource.Instance.BindableListItemTemplateId-->
MvxAndroidBindingResource.Instance.ListItemTemplateId



### 出現Duplicate managed type found! Mappings between managed types
通常是你有參考到了mono版的supportv4 lib,移除用xamarin support v4就可以了，移除後，有可以build不過，改p0->.position


### 處理edittext不要一開始就focus(會讓鍵盤跑上來)
http://stackoverflow.com/questions/1555109/stop-edittext-from-gaining-focus-at-activity-startup



### 如何鎖住螢幕方向
    [Activity(Label = "NFCInv", Theme = "@style/StyledIndicators",ScreenOrientation = ScreenOrientation.Portrait)]### Xamarin 使用Beam傳送/接收資料範例
https://github.com/xamarin/monodroid-samples/tree/master/AndroidBeamDemo
### nfc觸發後不要recreate
https://forums.xamarin.com/discussion/25346/nfc-onnewintent-action-is-never-nfcadapter-actionndefdiscovered



### Visibility

https://github.com/MvvmCross/MvvmCross/wiki/Value-Converters#the-mvx-visibility-valueconverters

但要記得下載nuget for mvvmcross visibility` local:MvxBind="Visibility Item.IsShowDelete, Converter=Visibility"`