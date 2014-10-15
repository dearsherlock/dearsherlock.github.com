---
layout: post
category : Xamarin 
tagline: "Xamarin@Techdays2014 "
tags : [Xamarin,iOS,Android,C#]
title: "『筆記』跨平台原生 App 開發實戰 使用 Visual Studio + Xamarin 3.0 + C#"

---

#### 概述

這是對於TechDays2014 Xamarin課程的筆記。有些重點功能。[微軟的TechDays2014影片來源][1]

#### Android Multi-View Designer

可以新增不同尺寸的裝置頁面設定，然後點選multi-edit，可以連動影響，或是可以針對某一種頁面進行微調。儲存後會產生對應尺寸的設定檔案。

#### iOS Designer

1.以往要用Xcode拉畫面，現在可以用Xamarin，但其實他是背地裡透過intranet去呼叫Mac上的Xcode然後編譯產生畫面預覽。  
2.Designer可以設計畫面流程。

#### Xamarin Form 3.0
1.可以把UI也共用，可以寫xaml就可以套用到三種平台上。  
2.缺點是目前Silverlight拉畫面是需要用程式碼，沒有UI，但是Xamarin團隊正在趕工。  
3.高使用者互動之滑動等，就需要custom render，使用Xamarin Form難度比較高。但遇到這種比較複雜的，也可以用原生的控制項做混合互動。  
4.新增專案時是用Mobile App節點，可選PCL（共用類別庫）、ShareProject（跟FileLink很像），選完之後會產生對應平台的專案檔。(通常一次會有四個專案，其他平台都不需要動，只要在共用專案上寫就好。)

#### 跨平台開發
1.PCL、Sharepoint可以共用商業邏輯，但是UI要另外個平台寫。  
2.MVVM只有一個英國人在維護，改版慢。  
3.Xamarin Forms:目前沒有UI Designer。  
4.SQLite在跨平台時可以用SQLite.Net PCL版。可以使用Entity的功能。  
5.存取檔案需要注意大小寫，不然會有檔案找不到的情形。(iOS不區分大小寫,android是有)  
6.Xamarin有用到PCL和MVVM的特點。可以在PCL專案中用xaml設計，只是沒有所見及所得預覽(等改版)。  
7.因為用了MVVM，所以可以用Binding的方式。  
8.寫好後執行，在每個平台會有對應自己的控制項，所以會有點不同。  
9.xaml上的binding和command都和之前的差不多。


#### Azure Mobile Service
1.可以掛社交平台驗證  
2.行動推播  
3.支援Android、iOS、WP、Win8  

#### SinalR
1.以往可能會有緩慢情形。會針對Server和Client的條件自動選擇通訊協定。首選會是Web Socket（輕量化），Server Sent Event、Forever Frame、Long Pooling。  
2.可以推到某client端，或是群組（可設白名單）  
3.Server會有一個Hub需要提供服務。  
4.Client透過Proxy.invoke呼叫Server，Server也可以呼叫client的方法。  
5.Server提供服務的Class只要繼承Hub，寫個方法即可。範例如下圖。  
![][image-1]  
6.Server可以對Client做群發，ex:Clients.All.XXXX(xx)，這裡會發現為何可以呼叫Client的方法（lib不在Server端），這裡用到的是Dynamic expression（c#4.0支援，compiler time不會報錯）。  
7.Client的建構子需要傳入平台、Hub的位置。Connect的時候可以選擇連線方式。不指定會自動選擇。如下圖  
![][image-2]  
另外也需要宣告連線後需要執行哪些事情，如下圖。  
![][image-3]  
8.Client需要宣告被Server呼叫事件的名稱，如上面Server端動態呼叫的。如下圖上方。  
![][image-4]  
9.SignalR如此就可以完成簡單即時通訊  
![][image-5]  


[1]:	http://www.microsoftvirtualacademy.com/training-courses/techdays-taiwan-2014-breakout-sessions-dev

[image-1]:	https://farm6.staticflickr.com/5598/15540559282_4705c1750b_o.png
[image-2]:	https://farm4.staticflickr.com/3952/15540564482_08a1d0e298_o.png
[image-3]:	https://farm4.staticflickr.com/3956/15537048481_b12ce64a1a_o.png
[image-4]:	https://farm4.staticflickr.com/3952/15540564482_08a1d0e298_o.png
[image-5]:	https://farm6.staticflickr.com/5613/15516054796_46521f1a68_o.png