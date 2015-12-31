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

若是import的layer，則使用ScrollComponent.wrap layer，會回傳塞好layer物件的ScrollComponent物件(相當於靜態產生物件的方法)


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

### Sketch小秘訣
Hint:Sketch可以在圖層裡面加上一個Mask，用來遮住超過的部分如下：
![image](https://farm2.staticflickr.com/1590/23448441243_6820407391_o.png)

若是關閉當成Mask，會如下：  
![image](https://farm6.staticflickr.com/5711/23447020664_890cbbfd2c_o.png)

通常會開啟Mask，在Sketch裡面比較看起來擬真。

### ScrollComponent當下的Y位置與ScrollComponent內容的Y值
   - ScrollComponent當下的Y位置＝scroll物件.scrollY
   當手勢往上滑動(內容往下捲動),表示是在看ScrollComponent比較下面的地方，所以此值會變大。
   - ScrollComponent內容的Y值＝scroll物件.content.y
   當手勢往上滑動(內容往下捲動),表示是內容往上面跑走超出可視範圍，所以此值會變小(也可負數)。

### 選動到某個特定點
scroll.scrollToPoint(point, animate, animationOptions)

Scroll to a specific point, optionally animating.
參數：
	point — ex: {x:0,y:0}
	animate — true
	animationOptions - ex: {curve:"spring(240,24,0)"}

Sample:  
	`scroll.scrollToPoint {x:0,y:0},true,{curve:"spring(240,24,0)"}`	


### 練習：Scroll一個長頁面，並且在右小角會有一個提示可以往下拉的動畫，拖拉下文章會讓背景圖模糊。

程式  
{%gist dearsherlock/8aa1b17f0d1ac1d9ba53%}

[DEMO](http://share.framerjs.com/s9buhfidcl43/)
<iframe src="http://share.framerjs.com/s9buhfidcl43/" height="600" width="100%" frameborder="0" 
     allowfullscreen="allowfullscreen">
</iframe>

### 練習：強化以上的練習，讓右下角的動畫可以旋轉  
{%gist dearsherlock/9efdea2627384b691315%}

[DEMO](http://share.framerjs.com/g46emnopetof/)
<iframe src="http://share.framerjs.com/g46emnopetof/" height="600" width="100%" frameborder="0" 
     allowfullscreen="allowfullscreen">
</iframe>


## Page Component
用來建立換頁的物件，每頁可以放自己想要的內容。可以控制左右切，也可以控制上下切。(常用於相片檢視)

### 設定垂直捲動方向不要動
設定PageComponent的scrollVeritical屬性＝false，可以讓捲動比較不會飄。

### 把Layer加到PageComponent中
方式一：建立的物件指定superLayer
設定superLayer: pageComponent.content  
ex:  
{%gist dearsherlock/7f2917ea6693bd79c7ac%}

方式二：PageComponent加入物件  
ex :  
`pages.addPage newPage`

### 切換到某一頁，並加上動畫
{%gist dearsherlock/1466c08e9789756fe8f2%}

### 往左或往右切到下一頁
{%gist dearsherlock/60e44c9ce2c604ab30f8%}

### PageComponent切換到該頁的事件，也許要做一些特殊的處理
{%gist dearsherlock/5cc129fd9011cee1dd10%}

### 練習
自動產生頁面塞入PageComponent，然後跳頁，加上動畫

{%gist dearsherlock/a0ef58120e94fca06293%}

[DEMO](http://share.framerjs.com/snvf7b2nxxub/)
<iframe src="http://share.framerjs.com/snvf7b2nxxub/" height="600" width="100%" frameborder="0" 
     allowfullscreen="allowfullscreen">
</iframe>