---
layout: post
tagline: "UML 教學"
categories : [uml,association,composiition,aggregation]
title: "網路上與UML相關之KM文章"

---


astah 在畫OOA的關連性：

astah官方回答：http://www.uml-diagrams.org/association.html

![image](https://farm8.staticflickr.com/7555/16153276438_3bab39b823_o.png)

unspecified association to unspecified association    
unspecified association to Navigable association  
non-Navigable association to Navigable association  
Navigable Association to Navigable association  

![image](https://farm8.staticflickr.com/7541/16154808989_3b39c086cf_o.png)

Aggregation to unspecified association  
Aggregation to Navigable Association  
Composition to Unspecified Association  
Composition to Navigable Association  

Dependency   
Usage  
Realization  
Template Binding  
Generalization  
Nest  

![image](https://farm8.staticflickr.com/7576/16347534175_b5e1ccd4bb_o.png)


[微軟對於UML的繪製教學]("https://msdn.microsoft.com/en-us/library/dd409376(v=vs.100).aspx"
)


[微軟方向性]("https://msdn.microsoft.com/en-us/library/dd323862(v=vs.100).aspx"
)

UML：  
![image](https://farm8.staticflickr.com/7488/16157158040_c1bc50e6a3_o.png)

association:相當於把老爸的PK放到兒子的PK去且當FK
aggregation:相當於把老把的PK放到兒子的欄位中當FK

####網路上的解釋


[中文的UML介紹](http://tx.liberal.ntu.edu.tw/jx/IS_IM/UML.htm
)

[uml組織的介紹](http://www.uml-diagrams.org/class-diagrams-overview.html
)


[解釋的比較好的UML關係 ](http://aviadezra.blogspot.tw/2009/05/uml-association-aggregation-composition.html) 


[解釋的比較生活化的
](http://creately.com/blog/diagrams/class-diagram-relationships/
)

####Association：  

-弱關聯  
可能只是有用到，不一定會有對方物件當參數作關聯，他的方向就表示父類和子類的方向，有時候箭頭會化成以下，或下下圖。    
![image](https://farm8.staticflickr.com/7495/16159080678_98f2b7de6d_o.png)

![image](https://farm8.staticflickr.com/7507/15727563963_d2ae9d1cd8_o.png)

-強關聯  
通常會有對方物件當參數作關聯。  
![image](https://farm8.staticflickr.com/7500/16159315060_ebd1a3974a_o.png)

####Composite
描述由必要元件組成，所以組成的元件並不能在兒子物件中當成回傳變數，或是輸入變數。（在腳或手的參數中有一個人的型態，將會很奇怪）


![image](https://farm9.staticflickr.com/8663/16158910430_fcd43e73a1_o.png)

其他範例如下，都是父類刪除資料，子類就也跟著刪除。  
![image](https://farm8.staticflickr.com/7556/16345646631_055d21d173_o.png)

若是以下的圖，若是父端為0~1且是composite，則表示當父類刪除資料，子類還可以有留下來的空資料(無部門員工，或是Log都可以用這類)

![image](https://farm8.staticflickr.com/7559/16345622051_18a5dd2f03_o.png)

![image](https://farm8.staticflickr.com/7562/16159800768_fd22f9577f_o.png)

####Aggregation：
是一種分享關聯。在應用程式中該子類別也可以讓其他類別聚集。
![image](https://farm8.staticflickr.com/7548/15723896344_4000d31ec0_o.png)
