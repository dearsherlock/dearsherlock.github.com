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
預設的版面文字和圖片的最大寬度不一樣，圖片的最大寬度為56.25rem，如下post.css中：

```
p.with-image {
        text-align: center;
        padding-top: 3.125rem;
        padding-bottom: 3.125rem;
        max-width: 56.25rem; }
```

文字區塊則只有43.75rem，請參見post.css中  

```
.post-template .notepad-post-content > div:not(.notepad-post-title) h1, .post-template .notepad-post-content > div:not(.notepad-post-title) h2, .post-template .notepad-post-content > div:not(.notepad-post-title) h3, .post-template .notepad-post-content > div:not(.notepad-post-title) h4, .post-template .notepad-post-content > div:not(.notepad-post-title) h5, .post-template .notepad-post-content > div:not(.notepad-post-title) h6, .post-template .notepad-post-content > div:not(.notepad-post-title) ul, .post-template .notepad-post-content > div:not(.notepad-post-title) ol, .post-template .notepad-post-content > div:not(.notepad-post-title) blockquote, .post-template .notepad-post-content > div:not(.notepad-post-title) pre, .post-template .notepad-post-content > div:not(.notepad-post-title) hr {
      max-width: 43.75rem;
      margin-left: auto;
      margin-right: auto;
      -webkit-font-smoothing: antialiased; }
```

內文部分也是在post.css，如下：  
```
.post-template .notepad-post-content > div:not(.notepad-post-title) p {
      margin: 0 auto;
      padding-bottom: 2em;
      max-width: 43.75rem;
      font-size: 1.125rem; }
```

將其改成跟圖片一樣，都是同一個垂直位置開始(`max-widthL56.25rem`)，這樣就節省空間多了。
調整前如下圖：  

![image](https://farm4.staticflickr.com/3946/15361167739_b51b2572c1_o.png)

調整後如下圖：   

![image](https://farm4.staticflickr.com/3943/15524089696_a2a94976fb_o.png)

###調整H3等級的字型顏色

橘色還不錯用，拿來try看看 `color: #F16522;` 
找到foundation.min.css，搜尋`h3{font-size:1.375rem}` 改成 `h3{font-size:1.375rem;color:#F16522}`，但要注意可能在以下區塊有被設定共用顏色，拿掉h3等級即可。

```
h1,h2,h3,h4,h5,h6{font-family:"Helvetica Neue","Helvetica",Helvetica,Arial,sans-serif;font-weight:normal;font-style:normal;color:#222;text-rendering:optimizeLegibility;margin-top:0.2rem;margin-bottom:0.5rem;line-height:1.4}
```

###設定favicon
有兩個圖片需要修改，都在根目錄下。favicon.ico、favicon.png
可以使用[favicon產生器](http://www.favikon.com/)，產生器使用方法。  

![image](https://farm6.staticflickr.com/5609/15545257221_b7f411039e_o.png)

修改之後如下圖，png影響的是瀏覽器上的圖片，ico應該是我的最愛或書籤。  

![image](https://farm4.staticflickr.com/3932/14927774423_e418ba2b56_o.png)

### 設定文章標題的置中排版

原本的版面如下圖：  

![image](https://farm6.staticflickr.com/5597/14929600713_9b5fc03239_o.png)

找到 `post.css` 中下面這段：
```
.notepad-post-title-simple h1 {
    color: #000;
    font-weight: 800;
    font-size: 3.125rem;
    padding: 0;
    padding-top: 5rem;
    padding4-bottom: 4.375rem;
    margin: 0 auto;
    line-height: 1.1;
    text-align: center;
```
修改為left。

另外再修改另外一種情境下的h1 css，也是在post.css。不過這時有點訣竅了，因為css會有分層，或是or/and要怎麼描述，請[參見這裡看一下css的分層設定](http://www.w3schools.com/cssref/css_selectors.asp)

```
 .post-template .notepad-post-title h1 {
      color: #000;
      font-weight: 800;
      font-size: 2.1875rem;
      margin: 0 auto;
      line-height: 1.1;
      text-align: left;  //加上這句
```


