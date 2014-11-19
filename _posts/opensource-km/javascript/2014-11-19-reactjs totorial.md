---
layout: post
category : Javascript 
tagline: "Javascript資源"
tags : [javascript,resource,react.js]
title: "React.JS初認識"

---
###React.JS初認識
這是Facebook為了要解決大量資料常常變動，而Layout又不想要使用template來對應Model產生(不夠彈性)，所以想出來的解決方案。
官網在此：[http://facebook.github.io/react/](http://facebook.github.io/react/)

###先介紹JSX

JSX是官方推薦的撰寫語法。因為React.js是屬於View，而免不了要常常Render一些HTML的頁籤，所以用xml來在程式碼中流竄總比一堆的雙引號字串加起來好懂多了。  
所以在javascript中加上XML的語法的就是JSX。並非一定要這樣寫，但是這樣寫比較好理解、乾淨。  
下面這個範例是上下等效，下面是上面的JSX語法編譯後產生的內容。  
{%gist dearsherlock/0c2001aee6ac5a1b28fe%}

###第一個簡單元件範例

![image](https://farm8.staticflickr.com/7534/15639938699_6accfb7734_o.png)

1.可以看到第一行就是對HelloMessage這個控制項來做定義，定義了Render方法。  
2.控制項在處理的時候免不了要讀取控制相本身的屬性，可以看到取用this.props.name。  
3.完成。  
