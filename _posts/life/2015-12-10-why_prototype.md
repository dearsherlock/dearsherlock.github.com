---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Research]
title: "Prototyping with Frammer"

---
## Why Prototype?
- 溝通Idea
- 設計在兩種狀態之間發生的事情
- 嘗試新的互動效果
- 強化你的技術

## Why Framer?
- Powerful prototyping tool
- 很容易展示微互動
- 設計工作流程的一部分
- 有很好社群可以彼此幫助

## Framer的結構
程式碼會寫在app.coffee（執行期間會轉成app.js），影像若要載入，可以用拖拉的方式拖入IDE中


## 語法
如我自己的[hello framer](https://www.dropbox.com/sh/oo8enm9qvscdnvm/AABD6Q0SK_BioIgqmS5I39_ha?dl=0)


## 若PC環境下，可以用另外的工具開發
### Brackets
http://brackets.io/，使用外掛管理器，另外安裝CoffeeScreipt，以及CoffeeScript Auto Compiler(自動產生JS的產生器)，安裝完後，刪除原本的app.js，改成assp.coffee，把framer studio裡面的code copy出來，注意一下資源檔案，儲存之後就可以產生app.js。

### Codepen
現在codepen也支援了coffeescript，
首先先要抓一下framer.js的建置腳本位置
![image](https://farm6.staticflickr.com/5750/23620847306_d7092051b1_o.png)

複製連結之後，到codepen的js面板設定，

![image](https://farm6.staticflickr.com/5804/23620867196_9882234939_o.png)

然後把coffeescript的程式copy到js面板中，就可以直接執行了～

https://farm1.staticflickr.com/729/23018809714_6f94d4ac0e_o.png

## 語法重要概念
- CoffeeScript是 Case-Sensitive
- 支援string格式化，ex: aaa= "#{變數名稱1} #{變數名稱2}"
- 單引號和雙引號是不同意義。
- 布林變數可以指定成true/false或是on/off或是yes/no
- unless也可以是if
- 陣列可以同時存在字串、布林、和數字。
- 陣列裡面也可以存陣列(無限階層)。
- 註解可以單行＃, 也可以註解一個區塊###
- 要參考顏色的英文名，[可以到這裡查詢](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#Color_keywords)



## Framer語法
- 若寬度要整個面板寬，可以寫成width:Screen.width
- 設定陰影
![image](https://farm1.staticflickr.com/736/23669576995_fa94c095b3_o.png)

- 設定透明度
![image](https://farm1.staticflickr.com/580/23643529916_c5aa562c0b_o.png)
- 設定可見度
![image](https://farm6.staticflickr.com/5835/23301667159_0d90ce3912_o.png)

- 設定圖片圖層的方法(url或是載入專案目錄中的圖檔)
![image](https://farm1.staticflickr.com/704/23042731203_5a0dd0767c_o.png)

- 影片圖層
![image](https://farm1.staticflickr.com/665/23587397141_ec285a386b_o.png)

- 設定背景圖層(BackgroundLayer)和html語法的圖層，且該圖層還可以內嵌css
![image](https://farm6.staticflickr.com/5728/23301952939_82a935147f_o.png)

- 設成圓形的圖層：myLayerCircle.borderRadius = "50%"

## 匯入Photoshop/Sketch
目前支援匯入兩種，可以直接不存檔就匯入(從記憶體匯入)。
不過...與Sketch相容性較好，因為Photoshop若在圖層中隱藏，會在Framer中找不到該物件。重新Import也一樣。
如下在PSD中隱藏，會在Framer中找不到
![image](https://farm6.staticflickr.com/5804/23277370363_d62b28c577_o.png)

![image](https://farm6.staticflickr.com/5733/23904126345_f42b20b327_o.png)
而Sketch倒是不會，因為Framer對於Sketch的相容性較好，如下社群所說：  
![image](https://farm1.staticflickr.com/780/23821763661_676dca8282_o.png)

兩個引入的語法都一樣，只有檔名因地制宜。
如下，是import一個photos的檔案，是ps或是sketch都一樣。
photosLayers1 = Framer.Importer.load "imported/photos"

## 迴圈與Framer 物件子圖層：
如下程式中，subLayers是共用屬性，可用for...in...或是for (key,value ) of...來處理。

{%gist dearsherlock/716c97c358c01595b1de%}

結果：

{%gist dearsherlock/3f18641f29d8ff75a2a3%}



## 組織Sketch檔案
Framer.Device.contentScale=1.94  //可以把解析度自動擴增調高。
在Sketch模擬6s的解析度是1242x2208，所以若用原本sketch設計的640*1136的就要＊1.94倍

## 結構

比較差的結構
![image](https://farm1.staticflickr.com/585/23530309349_ba4dd61c83_o.png)

比較好的結構：有好的命名和階層性
![image](https://farm1.staticflickr.com/607/23872116316_cb01fa6da5_o.png)



## 動畫
### 簡單的移動、大小和透明度改變
{%gist dearsherlock/8eb2984620d2fab396c2%}


<iframe src="http://share.framerjs.com/nd0k5lgulao7/" width=100%>
</iframe>
