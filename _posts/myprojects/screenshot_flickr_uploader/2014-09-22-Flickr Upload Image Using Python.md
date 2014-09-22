---
layout: post
category : mac 
tagline: "於Mac中使用Python指令進行Flickr上傳圖片"
tags : [Flickr,Python,Mac,Upload]
title: "我的小工具系列"

---
{% include JB/setup %}

## 前言

由於寫技術文章時，常常進行螢幕列印或是圖片的取材，而最麻煩的就是這些圖片的位置擺放。

研究了一下網路上對於螢幕列印的支援（也花了半天找加上try那些阿哩不達的plugin）都無法在Mac上正常運作。例如Sangit直接就沒有Flickr的外掛，另外也找了一些PicBackMan等兩個雲端同步的軟體，但是都有license問題（雲端服務難破解）。所以後來乾脆自己寫。

而這篇文章介紹了，如何在本地開發一個Python程式，然後介紹大概要怎麼安裝這些缺少的函式庫(若可以一起打包成安裝檔不就更好？！但還不會...)、註冊Flickr App、使用Automator執行(Python程式內容就不介紹了)，也許這一路下來還滿複雜，但是使用上，我只需要把檔案放到特定目錄下，就會啟動python程式上傳到Flickr，並且取得原始照片連結，貼到剪貼簿記憶體中。能夠減輕我日後的撰寫文章麻煩，也算是辛苦有代價。


---- 

## 為啥要用Python
為啥要用Python？其實只是純粹有範例可以上傳flickr來改，且寫完之後可以讓Automator來呼叫，最乾淨簡單。另外也就是多學一種語言囉！(雖然一開始很排斥～)

---- 
## 於Mac上的Python環境設定

由於Mac上已經有Python，不過是舊的，就先更新吧。

目前最新版是如下圖

![][image-1]

而我還沒對Python摸熟，弄這些環境問題就搞很久。一些小問題如只能在工作目錄環境下，其他目錄都會有權限問題(sudo也沒用)，所以我大多只在user下的document目錄下執行。或是Dropbox目錄下也可以。執行時可以是如下的語法：

`python ~/Dropbox/MyGithub/flickr-uploader_MacVersion/uploadr.py `

本程式還要多安裝PIL，不過該套件已經換名字，但是namespace還沒改，所以需要找正確檔案來安裝。安裝方式：[安裝PIL][1]，若已經被移除，請執行如下步驟一：

`$ brew install libtiff libjpeg webp little-cms2`

另外使用pip安裝

`pip install Pillow`

若你有缺pip，請到[這裡下載][2]，下載後執行

`sudo python get-pip.py`

檢查pip版本

`$ pip --version`
`pip 1.5.6 from /Library/Python/2.7/site-packages (python 2.7)`

接下來再把PIL的安裝步驟二做完：

`sudo pip install pillow`

會開始安裝如下：

`Downloading/unpacking pillow`

`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_`
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_`
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `
`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9_intel.macosx_  `

`Downloading Pillow-2.5.3-cp27-none-macosx_10_6_intel.macosx_10_9 _`



## 下載並執行Python版的Flickr上傳程式

請到[我的Github下載][3]，下載.ini檔和.py檔就好。
.ini檔案可能會有我的範例設定，您可以改用自己的app私鑰和加密。

可以到[這裡註冊][4]新的App資料，如下圖

![][image-2]

接下來就是執行囉。

先測試一下本地端是否OK。

`python ~/Dropbox/MyGithub/flickr-uploader_MacVersion/uploadr.py `

不一定要跟我放同一個位置啦，我的是因為程式要用Dropbox備份。執行完後會出現一個小小的提示視窗，提醒您已經執行完畢。
## 安裝通知視窗函式庫：
因為要在桌面上呈現通知，所以多做了這樣的功能。但是要多裝一個元件就是了。
請多執行以下指令獲取程式包：

`$ sudo gem install terminal-notifier`
其他的就是程式中都有完成。

## 設定檔說明
隨著python 檔案跟隨著的ini檔案是設定檔，放在同一起執行，像api_key、secret都是跟著flickr api的。你可以建立自己的。

`FILESDIR = "/Users/sherlock/Dropbox/Screenshots"
``
``FLICKR = {`
`		"title"                 : "ScreenShot_Title",`

`		"description"           : "ScreenShot_Description",`

`		"tags"                  : "ScreenShot_Tag",`

`		"is_public"             : "0", `

`		"is_friend"             : "0",`

`		"is_family"             : "0",`

`		"apikey"               : "ea0051e3fed310b4541079c92efadac8",
``
``		"secret"                : "3955788f95fd4039"`
`		}`

## 第一次執行：
第一次執行，請先獨立執行python檔案，如下：

`python ~/Dropbox/MyGithub/flickr-uploader_MacVersion/uploadr.py `

因為Flickr安全性的關係，會問你是否要授權，授權後會在本地產生一個token檔案，下一次就不需要了。那個是指你是否要授權給該APP（該APP就是你看到的Python檔案）。按下確定授權後，然後在左邊命令列按下Y，會儲存相關資訊（不然）

![][image-3]

授權成功就會出現下面圖片：

![][image-4]

## 結合Automator：

首先新增一個自動化的專案，也就是啟始點。因為我們是要在檔案新增的時候觸發automator腳本，所以選擇以下：

![][image-5]

建立之後，開始編寫腳本，或者您也可以[用我寫好的][5]。

![][image-6]

寫法後存檔，測試一下可否執行。

## 實機測試：
按下螢幕列印後，或是丟個檔案到該目錄，應該都會觸發該腳本，若有問題請通知囉！

- 工具列上會出現這個符號表是正在執行腳本
	  
![][image-7]

- 執行完後會出現提示視窗

![][image-8]

目前是Python腳本會去看該目錄最新的檔案然後上傳(每次執行都這樣)。也許會有bug，但我測試幾次是還好。本篇文章也都是用該工具執行後貼上圖的。還算方便，嘿嘿，大家一起加油囉！

## 下一版改善
目前發現可以改善的：由於Flickr上傳時有些時間，若連續截圖會很不方便，前面擷取到的圖片位置會被下一張蓋掉，是還夠時間貼在notepad上啦。不過可能就是變成不要清空剪貼簿內容，改用append的方式，這樣所有的圖片網址就會被保留。
另外可能需要加上參數，讓使用者(也許只有我...@@)可以選擇圖片的大小（目前是抓原始檔）
也請大家可以多試試囉～

---- 

[1]:	http://pillow.readthedocs.org/en/latest/installation.html#mac-os-x-installation "安裝PIL"
[2]:	https://docs.google.com/file/d/0B62x5TTVLcQ0WEtTZHVuTDdWeDg/edit
[3]:	https://github.com/dearsherlock/flickr-uploader_MacVersion
[4]:	https://www.flickr.com/services/apps/create/apply
[5]:	https://github.com/dearsherlock/flickr-uploader_MacVersion/blob/master/mac_automator_script.workflow/Contents/document.wflow

[image-1]:	https://farm6.staticflickr.com/5569/15318539842_1fd9ccb4a0_o.png
[image-2]:	https://farm6.staticflickr.com/5588/15318852972_e407a9a677_o.png
[image-3]:	https://farm4.staticflickr.com/3878/15133889890_e728bebc10_b.jpg
[image-4]:	https://farm4.staticflickr.com/3880/15134074807_2429b71220_z.jpg
[image-5]:	https://farm4.staticflickr.com/3859/15319229465_5a1d157e2c_o.png
[image-6]:	https://farm4.staticflickr.com/3892/15132655038_b7198e93d0_o.png
[image-7]:	https://farm4.staticflickr.com/3910/15296249446_ebf57f9f37_o.png
[image-8]:	https://farm6.staticflickr.com/5579/15132538969_4a517c0faf_o.png