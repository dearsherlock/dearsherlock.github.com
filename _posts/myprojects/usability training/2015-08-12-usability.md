---
layout: post
category : Design 
tagline: "Usability"
tags : [Design,Usability]
title: "易用性評估方法"

---

### 易用性評估方法

這堂課的老師是Shuyang，其實課後整理時，發現這篇文章『[嫁給RD的UI Desugner：十大易用性原則](http://blog.akanelee.me/posts/160115-top-ten-usability-principles)』就已經把尼爾森的十大可用性原則講完了～大家可以看一下比較圖文並茂。而針對我也滿困惑的英文 "Heuristic Evaluation"，陳啟亮顧問也有[他的看法](http://www.xxc.idv.tw/dokuwiki/heuristics_usability_evaluation)，反正課堂上老師是都用易用性評估來取代。

#### 易用性評估
目的：在於幫助開發者找到介面上的可用性問題。
步驟：藉由一系列的原則來檢視介面中的元素。
功能：代替使用者測試的評估方法，但不能完全取代。
效益：可以用少量的評估者就可以實作，研究顯示，大約五位評估者就可以獲得最好的投資報酬率。

![image](https://farm1.staticflickr.com/336/20326329758_4404970cf7_o.gif)
#### 尼爾森的易用性評估
於1994年由Nielsen和Molich提出。為目前UI領域中最多人使用的評估方式。提供的是一種刺激物，而不是一種step by step的指引。也就是說這些評估方式可以用來檢視你的產品，讓你的產品更好，但要跟老闆報告，最好是用比較的方式，然後對照之下呈現出你的產品優點。

#### 可用性的特性
1.學習性(Learnability)
是否可以立即完成一些任務？
2.效率性(Efficiency)
是否可以高效率且好的生產量地完成一項任務？
3.記憶性(Memorability)
若一段時間沒用，是否會不熟悉？
4.失誤性(Errors)
是否容易造成失誤發生？可否立即復原？可否避免災難性失誤？
5.成就感(Satisfaction)
使用者的情緒是正面的嗎？

#### 如何進行可用性評估
1.擬定計畫和測試目標
a.任務導向：如完成貼圖、Po文、聊天
b.系統目的導向：如知道app是solomo的目的軟體，就讓使用者自行嘗試挖掘任務，看看可否聊天或是貼圖等行為。
c.介面元素導向：純粹用UI讓使用者清楚知道如何使用

2.選擇評估者
若是五人小組中，有3-5名專家，則根據研究顯示可以找到90%的可用性問題。若是沒有相關背景的人，也可以找到22%-29%的問題。

3.根據十大可用性原則進行評估
持續反覆，逐一檢視並找出需要解決的可用性問題。


#### 尼爾森的十大可用性原則
- 系統狀態的能見度 Visibility of system status
- 系統與真實世界的關聯性 Match between system and the real world
- 使用者的操控自由 User control and freedom
- 一致性和標準 Consistency and standards
- 預防錯誤 Error prevention
- 辨識而非記憶 Recognition rather than recall
- 彈性與使用效率 Flexibility and efficiency of use
- 美觀與簡化設計 Aesthetic and minimalist design
- 幫助使用者認識、偵錯並從錯誤中恢復 Help users recognize, diagnose, and recover from errors
- 幫助與說明文件 Help and documentation


##### 系統狀態的能見度 Visibility of system status
在適當的時機，透過適當的回饋讓使用者知道現在的狀況。
如錯誤處理方式、呈現狀態，未讀訊息數量、新功能提醒、錯誤情形發生時的清楚指引

##### 系統與真實世界的關聯性 Match between system and the real world
說人話。
如Icon、畫面組成、用語都可以讓人清楚知曉。

##### 使用者的操控自由 User control and freedom
需要讓使用者清楚離開現在這個不期待的狀態。
如減少迷路、捷徑、快速結束等功能。

##### 一致性和標準 Consistency and standards
文字使用、選項排列、行為盡可能維持一致，且需要符合平台規範。
如ios/android/tv上的不同，名詞、標示、平台上的操作習慣、互動對話。

##### 預防錯誤 Error prevention
透過細心設計減少發生錯誤，且盡可能避免嚴重錯誤。
如電力提示除了icon也能跳出中斷一下使用者、詢問避免失誤而讓客戶不爽而不用、提示大小寫、裝置鎖定減少駭客或用戶損失等

##### 辨識而非記憶 Recognition rather than recall
使用者的記憶是來自activation of chunks，與使用頻率、新鮮度（距離上次使用時間）、當下情境是否可以聯想到。透過一些設計讓使用者不用依賴不可靠的記憶。也會因此提高使用經驗。實務上也是有靠記憶的，如密碼遺失的提示問答就需要記憶，但其實並不可靠，因為可能連那個都忘記。
辨識提醒，可以透過
- 系統用快取輔助記憶，如codesnippet、上次搜尋、截圖書籤、歷史紀錄、購買足跡、稍後觀看等。
- Icon
- 分類
##### 彈性與使用效率 Flexibility and efficiency of use
使用者可以彈性化設定來改變並改善使用習慣，或是提昇效率。
如快捷鍵、Mac手勢、自定工具列、ios控制版，都可以透過設定來改善UX。

##### 美觀與簡化設計 Aesthetic and minimalist design
重點的呈現。會用到的是格式塔心理學，用來提高注意力或是一些設計準則。
格式塔心理學：
![](https://farm1.staticflickr.com/563/19892789064_cfddfbeab5_o.jpg)

- 圖形背景：構成重要和提醒。如字級大小、透明度用來分別出重要等級，顏色單純化才能標示出重點。

- 封閉法則：使用排列，讓某個物體可以隱藏其中，雖然圖像不連續，但仍然可以看出意涵。如下圖片

	![](https://farm1.staticflickr.com/567/20489162146_679c2c82ce_o.jpg)

- 相似法則：一堆很規律排列的物體，或是重複出現的規則，可以讓使用者看了第一列就知道後面一堆圖像大概的含意，不會造成資訊閱讀負擔。故若在此處將資訊差異化，就會凸顯重點，如反白等。

![](https://farm1.staticflickr.com/563/20506742132_b4e1e51364_o.png)

- 接近法則：一堆很相似的物體，若數量越多，突然出現的間隔就會讓物體呈現出群組化的概念。

 ![](https://farm1.staticflickr.com/563/20328864959_7e157539e1_o.png)

- 對稱律：如圖片的左右符號、上下符號、On/Off、確認/取消等使用者對於對稱的預期。

- 連鎖律：給予序號或是排列就可以進行隱含式的引導方向。

##### 幫助使用者認識、偵錯並從錯誤中恢復 Help users recognize, diagnose, and recover from errors
提供豐富的遇到錯誤處理方式說明，或是ICON可以清楚標出問題。

##### 幫助與說明文件 Help and documentation
好的輔助文件是要：搜尋容易、專注在任務導向的說明、步驟式教學，且盡量精簡。
因為使用者並不是要閱讀說明書，是要解決問題。如問題可以Q&A條列，圖文並茂，或是動畫。

