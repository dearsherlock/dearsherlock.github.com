---
layout: post
category : Jekyll 
tagline: "回復當初"
tags : [Jekyll,KM]
title: "使用最原始的Jekyll 網站"

---

#### 緣由
使用Jekyll Bootstrap雖然方便，但有時候發現他的theme太少了，且顯示上不是很符合markdown該要呈現的樣式一直很困擾，且實在滿綁他的一些API，所以乾脆回復到Jekyll原始的。因為至少有一些樣板可套用。如下 [Jekyll Theme][1]

#### 步驟

```
 $ gem install jekyll    //從沒安裝過的可以用這方式安裝  
 $ jekyll new myblog     //建立blog的範例  
 $ cd myblog             //切換到該目錄  
\~/myblog $ jekyll serve   //啟動server，且這時已經可以隨時更新隨時預覽
```

接下來就是可以切換到 http://localhost:4000 去執行看看結果。
原本的本地預覽指令也就從` rake preview `改成 `jekyll server -w`
更新完之後也發現了，程式碼的換行比較正常了。

如下圖：
![][image-1]

[1]:	http://jekyllthemes.org/

[image-1]:	https://farm4.staticflickr.com/3928/15456253665_7c52a2881a_o.png