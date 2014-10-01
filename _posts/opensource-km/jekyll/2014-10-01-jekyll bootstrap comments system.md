---
layout: post
category : jekyll 
tagline: “facebook留言板功能
tags : [Jekyll,blog,Comments,Facebook]
title: "於Jekyll Bootstrap申請Blog的留言回應"

---
{% include JB/setup %}

### 申請Blog的留言回應

#### 緣由
有時候若有需要答覆讀者來信，當然是在文章下面有個問答區會比較方便。
而facebook就有有這樣的API開放。
外面其實也有一些討論的服務可以提供，如disqus、livefyre、intensedebate，但是會有廣告出現很礙眼。

#### 解決方案
因為是要在Jekyll bootstrap的blog樣板引擎中導入，所以不免也是要看一下它如何使用fb來做留言板，
請參見[如何啟用Jekyll 的留言][1]。

預設是disqus，但會有廣告，就不要用了。

步驟如下：

1. 先修改blog目錄下的`_config.yml`

  打開後找到以下這塊區塊


	comments :
	  provider : facebook
	disqus :
	  short_name : jekyllbootstrap
	livefyre :
	  site_id : 123
	intensedebate :
	  account : 123abc
	facebook :
	  appid : 1412420622311915
	  num_posts: 100
	  width: 580   
	  colorscheme: light

2. 將provider設成facebook，其他的區塊就不需要理它，因為我們就用facebook官方提供的javascript來取代。
3. 到facebook 新增[APP網址新增Website 使用的APP][2]，輸入一些資訊，簡單建立如下。
![][image-1]
4. 建立後，可以到[APP管理網址][3]來獲取你的APPID（可有可無的步驟）
5. 接下來點選[這裡][4]可以建立並獲取fabebook對於網站外掛facebook留言的javascript。在以下的畫面中，URL填入你想要被回應的對象文章(Jekyll bootstap目前好像沒辦法對每一篇文章，當然每一文章都要建立這樣的步驟也很累...)我是直接設定blog的主位置。如下圖，然後點選get code就可以選你剛剛建立的專屬APP。至於為何要專屬，因為之後可以用來管理啊。（你總不希望在別人的fb APP裡面被管理吧）
![][image-2]
6. 複製一下facebook幫我們產生的程式碼。
![][image-3]
7. 找到blog位置下的_includes/JB/comments-providers/facebook
然後打開，貼上剛剛複製的兩個腳本就好。
![][image-4]
8. 以下是修改後的範例。請大家試試看囉。
![][image-5] 


#### 參考連結：
- [Facebook留言管理][5]

[1]:	http://jekyllbootstrap.com/usage/blog-configuration.html#toc_3
[2]:	https://developers.facebook.com/quickstarts/?platform=web
[3]:	https://developers.facebook.com/apps/
[4]:	https://developers.facebook.com/docs/plugins/comments
[5]:	https://developers.facebook.com/tools/comments

[image-1]:	https://farm3.staticflickr.com/2947/15220845647_f2c6616d06_o.png
[image-2]:	https://farm3.staticflickr.com/2944/15404237071_4055ecb229_o.png
[image-3]:	https://farm4.staticflickr.com/3930/15384405026_e229501818_o.png
[image-4]:	https://farm4.staticflickr.com/3930/15220944837_ddf25beb07_o.png
[image-5]:	https://farm4.staticflickr.com/3931/15220717509_0b82bab272_o.png