---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Prototype]
title: "Frammer Import PS QA"

---

## 圖層需要為英文命名

不然會有以下錯誤：  

SyntaxError: JSON Parse error: Invalid escape character ?
parseUtils.coffee:498
domLoadJSONSyncUtils.coffee:498
_loadlayerInfoframer.js:22310
loadImporter.coffee:47
loadImporter.coffee:215
(anonymous function).temp.html:31
(anonymous function).temp.html:33
也盡量把複雜的資料夾變成智慧型物件，這樣取名字比較省力。

## 所有的物件都要放在圖層目錄中  
例如以下，Background需要放在一個群組內(bg)，不然Framer會抓不到。 
至於目錄裡面是什麼，是中文或英文就不重要，主要是控制目錄的顯示 
![image](https://farm2.staticflickr.com/1694/23594074954_218605d072_o.png)

## 目錄也要英文，不然會顯示問題  
![image](https://farm2.staticflickr.com/1473/24117898082_c57b3d614b_o.png)

## Visible的原則

因為Framer可以控制物件的呈現與否，而Framer對Photoshop有一些些的規範(限制)，所以要把所有需要被控制的物件都勾選顯示，否則會import失敗。
(覺得這樣PSD很亂的如下圖，可以善用圖層構圖定義情境來控制圖層的顯示或隱藏)
![image](https://farm2.staticflickr.com/1626/24144768251_23cfbda31d_o.png)

圖層構圖  
![image](https://farm2.staticflickr.com/1712/24227335505_2fbb6afb65_o.png)

## Framer import案例
匯入PSD成功之後，可以看到很有結構性的psd物件結構，就可以讓Framer輕易的控制。

![image](https://farm2.staticflickr.com/1605/23600564273_7fae0fd3f3_o.png)

## 範例
目前比較乾淨一點的PSD示範[在此](https://drive.google.com/file/d/0B62x5TTVLcQ0UDk0Y2stdDlWUFU/view?usp=sharing)

[Framer匯入成功後DEMO在此](http://share.framerjs.com/482ooft8cgn6/)，目前只有把所有的物件放入ScrollComponent裡面，可以上下滑動，隱藏了4:3和全版廣告物件。
