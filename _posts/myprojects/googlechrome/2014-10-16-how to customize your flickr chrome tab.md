---
layout: post
category : MyProject 
tagline: "客製化小程式"
tags : [Mometum]
title: "如何使用Flickr Momentum Chrome Tab"

---

####緣由

一開始看到Simon桌面上的漂亮畫面想說是哪個App，一問知道是Pinterest出的Chrome Tab外掛。玩著感覺還不錯玩。

#### Pinstest tab 1.3.4.6
有興趣的人請到擴充功能中下載。

![image](https://farm4.staticflickr.com/3929/15360552288_c9b8c80565_o.png)
實際上完就是會去動態讀取500px網站的圖片。   
![image](https://farm4.staticflickr.com/3946/15544022531_fe6faa3fd7_o.png)
可以選擇有興趣的圖片類型，我想就是因為跟500px有密切的合作的關係吧～不過就是有點解析度過低就是了。  
![image](https://farm6.staticflickr.com/5606/14926527773_0dca3ab55c_o.png)

#### Momentum 0.28
而後來回家後閒閒找了一下，原來也是有人寫了Momentum的外掛，但是好像是靜態的。
![image](https://farm4.staticflickr.com/3942/14926501483_816b478fed_o.png)

但已經算很漂亮了。桌面上是還多了大大的時間和focus（重點記事）以及todo(可以新增刪除修改以及勾選已完成)，而右上方的地址氣象資訊也可以修改喔。（我改成高雄也OK）
![image](https://farm6.staticflickr.com/5614/15547557962_40c39dd18a_o.png)

#### Flickr Momentum Chrome tab 0.11
這樣當然不能就滿足了，因為靜態的算是哪門子的滿足ㄚ？所以到github找到了有人寫chrome的外掛，他是基於0.26版下去改的。他就是加上了讀取動態Flickr的API去抓圖片。其他功能都保留一樣。大家可以去抓來看看，以下是[Github位置](https://github.com/McDo/Momentum-Flickr)。抓下來後要安裝也很簡單。請到chrome的擴充功能頁面，點選載入未封裝擴充功能，指向你下載的資料夾，就會載入成功囉。目前版本為0.11

![image](https://farm6.staticflickr.com/5613/15546745915_caf4be872c_o.png)

執行起來是都一樣啦，沒啥不動，只是重新載入後會動態顯示圖片就是了～
![image](https://farm6.staticflickr.com/5610/15361124400_3fce99e1fc_o.png)


####客製化我的 Flickr Momentum Chrome tab
雖然這樣就可以收工了，不過因為他是基於0.26版的momentum下去改的，有些bug可能沒有改善(偏偏momentum沒有寫feature list...@@)。有看到一點0.28有改善的，就是下方的座右銘json格式，新版的會有分開作者和語錄。顯示上也比較活潑一點。所以我就folk他下來改成Flickr動態版。[我修改完的github位置在這裡](https://github.com/dearsherlock/Modify_Momentum_2.8)。另外也發現他的氣象語法也有改掉一些bug，所以花力氣改0.28版還是有意義的啦。
修改的中間當然對於javascript不熟，所以又花了點力氣追bug...搞到很累不想上班...不過最後就是對javascript又多了點認識就是了。folk我的專案下來後請依照上面載入plugin，不過記得把其他plugin(以上介紹那幾個，怕同時執行會系統不正常)關掉。
![image](https://farm4.staticflickr.com/3956/15544111721_45f0753e35_o.png)

執行起來就真的都一樣，但Momentum 0.28會有的功能都有，該解的bug應該也都改了，所以開心使用中。
![image](https://farm4.staticflickr.com/3934/15547641652_363dc63c12_o.png)


追著程式碼有個好處，就是知道要改哪裡會有不同的功能。
接下來我想做的是弄個設定檔可以簡單設定以下功能：  
1.改變flickr source ，看可否讀取自己的相片或是某名人的去loop...  
2.取消所有畫面是的提醒資訊，現在我是知道哪一行程式碼可以改掉，修改後就如下圖，比較乾淨。
![image](https://farm6.staticflickr.com/5608/14926075594_293766f990_o.png)

等不及的人可以直接修改app目錄下的main.js，修改掉下圖357行就好。
![image](https://farm4.staticflickr.com/3937/15360208579_d4bfbe17f8_o.png)
