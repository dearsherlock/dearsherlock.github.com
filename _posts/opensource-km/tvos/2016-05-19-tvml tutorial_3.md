---
layout: post
category : AppleTV
tagline: "Apple TV Hello World (3)-使用catalog樣板"
tags : [fans,social_network,facebook,growth_hack]
title: "Apple TV Hello World (3)-重構你的JS程式，使用catalog樣板"
imagefeature: https://farm8.staticflickr.com/7527/27015435302_97d4b07d0f_o.jpg
covereffect: push

---
### Category樣板介紹
算是還滿常見的樣板，
![image](https://farm8.staticflickr.com/7466/26506624964_0c9568076b_o.jpg)

#### Banner區塊
本身是一塊複合元件，可以由一堆的小元件組成。元件可以是背景圖或是文字。

#### 準備材料
建立images和templates目錄，會把樣板放在templates裡面，等一下可以載入。

建立一個js檔案，裡面就放了一個category的樣板
banner就可以寫入多個
{%gist dearsherlock/19534f7bcac9495fa7a9b07df57e5620%}

因為樣板會是另外載入，所以勢必要寫一個loader，範例如下，另存在js目錄下。

{%gist dearsherlock/c4a5e8b9259f1c796dd14fa3f14d3988%}

先在presenter中加上一個解析TVML的函式，  
{%gist dearsherlock/8ab0f044f543981b243833de17398e19%}

DOMParser ：可以把一個TVML的字串轉換成物件導向的畫面（還記得tutorial 1中用的createAlert嗎？）而這個物件相當的耗資源，所以你盡量只建立一次就好(Singleton)

而因為要把這個主畫面拉到主流程，故在presenter中加上navigationDocument.pushDocument。
Presenter.js全部就變成：
{%gist dearsherlock/ad105183f5d43bc9dc891aa8f7cf9fd1%}

把Application.js中之前建立alert的程式替換掉，改成如下
{%gist dearsherlock/0cfbc5d5abcd50258bd30075d699d93e%}


 navigationDocument.presentModal(doc);大多拿來顯示跳出視窗，若要加入主畫面要寫成      `Presenter.pushDocument(doc);`



![image](https://farm8.staticflickr.com/7747/27113247315_e8d2abcb98_o.png)

### 樣板更豐富一點

把Category改成如下
{%gist dearsherlock/cff2af4eaf711172cd5b93aabedb2ff1%}

有多筆資料就塞多個listItemLockup，裡面可以放title和比較次級的描述文字

執行後畫面：
![image](https://farm8.staticflickr.com/7781/27026635172_07ee9f56d5_o.png)


接下來我們在改一下樣板，因為Category樣板左側的list可以設定他相關連的項目，就會顯示在右側。  
{%gist dearsherlock/387c03d27e716f60a76a579e63bdb879%}


顯示如下：
![image](https://farm8.staticflickr.com/7297/27121919205_293b37727f_o.png)



而剛剛你也看到在樣板中有加上點選之後的相關影片，所以我們需要來處理選擇了哪個物件的事件，以及Click他的事件。

這會在Presenter中處理。我們在裡面加上：
{%gist dearsherlock/7f04432c21e73439f7849bb2f743918c%}

Presenter.js中載入TVML畫面的時候也需要綁定事件
如下：
`    doc.addEventListener("select", Presenter.load.bind(Presenter)); //add this line to binding event
`

所以完整的Presenter.js如下
{%gist dearsherlock/a033d334b8118d2371184a6665d64388%}

按下後就播放了～

<iframe width="854" height="480" src="https://www.youtube.com/embed/0ltrgA-7Ufo" frameborder="0" allowfullscreen></iframe>


