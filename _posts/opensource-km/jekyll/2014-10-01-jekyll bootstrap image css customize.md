---
layout: post
category : Jekyll 
tagline: "自定樣式"
tags : [Jekyll bootstrap,css]
title: "修改Jekyll bootstrap的圖片css樣式"

---


### 自定樣式

####緣起
由於我在前一篇[小工具篇](http://dearsherlock.github.io/mac/2014/09/22/Flickr%20Upload%20Image%20Using%20Python/)有提到會抓取圖片的原始檔，但是有些樣板呈現上，原始檔案又太大，但有時卻要符合各種解析度，所以最後可以把寬度設成瀏覽器100%。

####解法
搜尋了一下img字眼，找到了幾個css檔案，請先確認你用哪一種樣板，然後修改該樣板下面的css檔案。
像我是用the-minimum，所以路徑會是如下：

`assets/themes/the-minimum/css/style.css`

然後修改一下內容，加上以下就可以囉！

`max-width:100%;height:auto;`

也許你的img區段css會是如下

`img{max-width:100%;height:auto; margin-top: 0;
  margin-bottom: 1.625em;}
`

以下是我的git修改前後。
![image](https://farm4.staticflickr.com/3930/15406873215_546bd0a897_o.png)

以下是我的blog文章修改後的呈現，就會不需要左右scroll。

![image](https://farm4.staticflickr.com/3931/15220497907_d21e9ec970_o.png)
