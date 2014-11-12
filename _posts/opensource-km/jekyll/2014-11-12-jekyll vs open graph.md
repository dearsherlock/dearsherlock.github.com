---
layout: post
category : Jekyll 
tagline: "Open Graph tags"
tags : [Open Graph,Jekyll]
title: Jekyll的Open Graph設定
imagefeature: https://farm4.staticflickr.com/3930/15475792571_4e82311fc0_o.jpg

---

Open Graph是Facebook或是比較新的網站所支援的標籤，可以讓你在分享blog文章的時候更生動。
請參考：

[網頁文章分享於facebook時的呈現設定](http://i.see-design.com.tw/2012/06/facebook_20.html)
[官方open graph 協定](http://ogp.me/#types)
[強化版的Jekyll 對應Open Graph](http://davidensinger.com/2013/04/adding-open-graph-tags-to-jekyll/)


因為在Jekyll的腳本網頁中(open-graph.html)有以下這段程式碼

{%gist dearsherlock/420de04086053a9b1e96%}


### og:image

可以知道在每一個md設定前面需要加上imagefeature註記，就會讓og:image跑出來。

### og:type

可以由以上連結的網頁中得知，可以分為article或是website。
