---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Prototype]
title: "Frammer Mirror Present"

---

## 寫在前面
Framer在設計的階段可以在Preview視窗中使用不同的底稿，可以有乾淨的全螢幕，或是iPhone、iPad、Android或是Browser，甚或是你自定想要呈現的底稿(如有一隻手或是遙控器等，但需要另外寫Snippet)

這些底稿只是作為設計時的Feel，不會影響設計的座標，請參考以下範例。

### 使用內建的Viewer
使用內建的Viewer可以點選右上方，選擇你想要的裝置。
![image](https://farm2.staticflickr.com/1648/24176175296_a44a123510_o.png)
而選擇之後，預覽視窗其實不會塞滿，會自適應縮小，讓你可以專注於動線的設計、微互動的設計。
而你若選擇最上方的FullScreen，就會把底稿移除，變成很乾淨。

### 自定Viewer
以TV為例子，若想要1280x720來做設計，載入的底稿需要大於這個解析度，且要慢慢的嘗試他的大小和邊界。如我嘗試1280x720解析度下，載入一個Flickr上面的圖檔，此圖檔因為有上下邊框，大小若沒設好，就會露出太多不想要看到的。
以下是成功的設定：  
{%gist earsherlock/b7a12df8e84b623d1d9d%}

底稿不會影響座標，是多少就會是多少，上面設定完之後範例如下
![image](https://farm2.staticflickr.com/1633/24202477775_ce6d104296_o.png)

### Mirror
而你可以在Mirror中選擇從瀏覽器打開，就會看到剛剛所設定的Viewer。不論是內建的或是自定的都會出現在Mirror中。因為啟動Mirror其實就是啟動Service，讓你透過瀏覽器看設計的東西，或是他其實也介紹了一些app讓你可以順暢的觀賞。  
**建議：**當你在設計TV或是比較奇奇怪怪的解析度，可以使用全螢幕的Viewer，且沒有底稿。然後用瀏覽器來做Mirror。這樣在簡報的時候就不會有邊框，也比較能沉浸於內容的展示。

**注意：要儲存才能有Mirror效果，才會即時更新。
**

