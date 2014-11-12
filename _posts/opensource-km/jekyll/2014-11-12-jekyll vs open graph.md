---
layout: post
category : Jekyll 
tagline: "Open Graph tags"
tags : [Open Graph,Jekyll]
title: Jekyll的Open Graph設定
imagefeature: http://img01.36krcnd.com/thumbs/w_720/h_480/wp-content/uploads/2012/01/fb-Open-Graph.png

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

### og:locale

可以在_config.yml中設定為zh_Hant_TW，用意是不大知道＠＠

### og:url
可以取得永久位置，而open graph對於url檢查十分嚴格，需要在_config.yml中設定site.url，這樣產生的meta才會是對的
。  
如下範例：  
{%gist dearsherlock/e98cbcfb2e709b62dd61%}

設定到這邊，得到了以下![image](https://farm6.staticflickr.com/5609/15772255922_107692a6f4_o.png)

還需要在把title加上去。

### og:title
如下的open_graph.html中所述，title會依照你的md檔上面的title進行產生，若沒有則會用網站的title。

{%gist dearsherlock/c836e4fd7107b8082a9a%}

設定好之後就會如下產生正確的open graph

![image](https://farm6.staticflickr.com/5603/15585049459_25cafae2d0_o.png)
