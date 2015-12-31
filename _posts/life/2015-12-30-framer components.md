---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Framer]
title: "Framer Components"

---

## 寫在前面
本章介紹Framer內建的元件，可以大幅減少你prototyping的時間。

## ScrollComponent

### 設定水平捲動
通常scroll不大會水平，可以關閉。預設是開啟。
設定ScrollComponent 的 scrollHorizontal 為true/false

### 把內容加到ScollComponent中
在layer建立的時候設定 superLayer 為 scrollcomponent.content

Codesnippet:  
{%gist dearsherlock/cdb7056b1f3c117b329a%}

### 設定ScollComponent的內容空隙（Padding）
設定contentInset屬性  
CodeSnippet:
{%gist dearsherlock/4d68465fa6a5587a6a05%}

### 設定ScrollComponent的事件
- Events.ScrollStart ：Scroll事件的滾動事件開始
- Events.ScrollEnd ：Scroll事件的滾動事件結束
- Events.ScrollAnimationDidEnd：Scroll事件的滾動事件含動畫結束(會比ScrollEnd的時間點晚一些)

### 練習:隨機產生layer使用superLayer塞入scrollcomponent。設定contentInset。
{%gist dearsherlock/1a6cc860248e359f4888%}

[DEMO](http://share.framerjs.com/u0cqydp5ogno/)

<iframe src="http://share.framerjs.com/u0cqydp5ogno/" height="600" width="100%" frameborder="0" 
     allowfullscreen="allowfullscreen">
</iframe>


### 練習：Scroll一個長頁面，並且在右小角會有一個提示可以往下拉的動畫，拖拉下文章會讓背景圖模糊。

Hint:Sketch可以在圖層裡面加上一個Mask，用來遮住超過的部分如下：
![image](https://farm2.staticflickr.com/1590/23448441243_6820407391_o.png)

若是關閉當成Mask，會如下：  
![image](https://farm6.staticflickr.com/5711/23447020664_890cbbfd2c_o.png)

通常會開啟Mask，在Sketch裡面比較看起來擬真。

