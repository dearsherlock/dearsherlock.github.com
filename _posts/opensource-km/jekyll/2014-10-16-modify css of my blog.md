---
layout: post
category : Jekyll 
tagline: "css調整"
tags : [Jekyll,KM]
title: "修飾一下網站css"

---

###調整字型

最近比較空閒一點，調整一下網站風格檔案，研究css。
首先，先來調整字型大小，一開始實在字型太大，先調整這個。
看到所有自行大小都是rem，就放心多了。有關於尺寸的定義請[參見這裡](http://jas9.blogspot.tw/2011/09/pxemrem.html)，很詳細。

首先修改 `assets/css/post.css` 這個檔案中，把尺寸調為75%，也就是剛剛那網站介紹的12px `font-size:75%`

###調整Title 字型比例

雖然是用rem，但是一開始得標提列實在太大，調整一下。
而因為這個css是動態調整，會隨著使用者的瀏覽器尺寸有不同顯示，所以css寫的很複雜。會有if的條件判斷。所以要改很多地方。  

如下要改h1的標題大小我就改了六個地方。  

![image](https://farm6.staticflickr.com/5614/15361570717_dc2ae562ab_o.png)  
![image](https://farm4.staticflickr.com/3948/15547576695_b08945fde1_o.png)


###修改文字版面

有時會發現文字排列是置中，會看了很煩，因為即使是要解釋圖片，也不大適合置中呀～置中也要自己一個區塊，不然很醜。
如下圖，因為文字和圖沒有隔一行(且要加兩個空白)，所以在本theme會判斷成和圖有關，就會變成套用with-image區塊的css。若加上兩個空白以及多一個空白行，就會正常了。

![image](https://farm6.staticflickr.com/5606/15547586345_31b73f43e9_o.png)

###對圖片的邊框加上顏色
若空白較多的圖片在淺色系的blog上看起來就有點不知道邊緣在哪裡。所以加上1px的空白框會比較適合。
請修改`foundation.min.css` ，修改其內容， `img{max-width:100%;height:auto;border: 1px solid #d4d4d4;}`

###分節符號使用

使用三個#就可以，不會太大也不會太小。

### 調整圖文排版
預設的版面文字和圖片的最大寬度不一樣，圖片的最大寬度為56.25rem，文字區塊則只有
