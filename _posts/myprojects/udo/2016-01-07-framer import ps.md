---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Prototype]
title: "Frammer Import PS QA"

---

## 圖層目錄/群組需要為英文命名

第一層的圖層目錄就需要面對到英文命名，不然會有以下錯誤：  

SyntaxError: JSON Parse error: Invalid escape character ?
parseUtils.coffee:498
domLoadJSONSyncUtils.coffee:498
_loadlayerInfoframer.js:22310
loadImporter.coffee:47
loadImporter.coffee:215
(anonymous function).temp.html:31
(anonymous function).temp.html:33

## 只要是目錄都要英文，不管第幾層，不然會顯示問題  
![image](https://farm2.staticflickr.com/1473/24117898082_c57b3d614b_o.png)

且同階層匯入遇到錯誤，其他物件也不會正常匯入
![image](https://farm2.staticflickr.com/1512/23990901280_c68b9c700d_o.png)




## 所有的物件都要放在圖層目錄中，且目錄和物件不要再同一階
例如以下，Background需要放在一個群組內(bg)，不然Framer會抓不到。 
至於目錄裡面是什麼，是中文或英文就不重要，主要是控制目錄的顯示 
![image](https://farm2.staticflickr.com/1694/23594074954_218605d072_o.png)

如AD_no_movie目錄裡面沒有目錄，Framer就會控制到AD_no_movie目錄就可以。

![image](https://farm2.staticflickr.com/1697/24178669212_737bacbde1_o.png)





## Visible的原則

因為Framer可以控制物件的呈現與否，而Framer對Photoshop有一些些的規範(限制)，所以要把所有需要被控制的物件都勾選顯示，否則會import失敗。
(覺得這樣PSD很亂的如下圖，可以善用圖層構圖定義情境來控制圖層的顯示或隱藏)
![image](https://farm2.staticflickr.com/1626/24144768251_23cfbda31d_o.png)

圖層構圖  
![image](https://farm2.staticflickr.com/1712/24227335505_2fbb6afb65_o.png)

可以讓程式控制的小物件可以獨立一個圖層，但不需要出現也沒關係（談好控制的原則），如Foucs，換頁遮黑
![image](https://farm2.staticflickr.com/1471/23988266810_c0c6292abb_o.png)


## Framer import案例
匯入PSD成功之後，可以看到很有結構性的psd物件結構，就可以讓Framer輕易的控制。

![image](https://farm2.staticflickr.com/1605/23600564273_7fae0fd3f3_o.png)

## framer的fontsite:
大多是直接指PX。

## 範例
目前比較乾淨一點的PSD示範[0110更新版本在此](https://drive.google.com/file/d/0B62x5TTVLcQ0aThOa01BaGxGOU0/view?usp=sharing)

PSD結構圖：  
![image](https://farm2.staticflickr.com/1702/23988331890_7a395c1c9a_o.png)

[Framer匯入成功後DEMO在此](http://share.framerjs.com/482ooft8cgn6/)，目前只有把所有的物件放入ScrollComponent裡面，可以上下滑動，隱藏了4:3和全版廣告物件。



## 調教過程



### Step 1 : Initial Status

![image](https://farm2.staticflickr.com/1447/24175567832_287ac3f0f9_o.png)


### STEP2 : CONTENT/BACKGROUND

![image](https://farm2.staticflickr.com/1445/23916263009_1427aa40b8_o.png)


### Step3 : 刪除不需要的圖層,調整到對應正確的圖層

![image](https://farm2.staticflickr.com/1489/23657488623_50d13efc45_o.png)


### Step4 : 依照內容區塊區分結構 (命名原則第一字大寫、不要有符號中文)


### Step5 : 調整到對應正確的圖層
調整到對的圖層,ic_new跟院線直送是同一層
![image](https://farm2.staticflickr.com/1633/23656156394_1bdfaaca45_o.png)

### Step6 : 不要把不需要的圖層還留在PSD裡面
如下圖裡面有些都不需要了。匯入反而會導致錯誤
![image](https://farm2.staticflickr.com/1610/24178715632_57153e32f6_o.png)

### Step7 :目錄和物件不要在同一階層
因為要嘛就是控制物件，要嘛就是控制物件，但控制目錄(包含一堆物件)會更容易，就不需要考慮命名問題。例如以下，就直接把一堆物件建立一個目錄放進去。

![image](https://farm2.staticflickr.com/1662/24260645366_a9e219df68_o.png)

改善後  
![image](https://farm2.staticflickr.com/1525/23658628084_7c202ae2d0_o.png)


### Step7 : 目錄的名稱不要重複，即使跨了目錄也一樣。


### Step8 : 結構要乾淨，若物件是集合，就要以集合呈現
![image](https://farm2.staticflickr.com/1497/24287286605_d90c5ac45b_o.png)


### Step 9: [完整更新的結構](https://drive.google.com/file/d/0B62x5TTVLcQ0aThOa01BaGxGOU0/view?usp=sharing)

