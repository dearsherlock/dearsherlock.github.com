---
layout: post
tagline: "OOA/ERD Table"
categories : [CHTPOS,Schedule]
title: "CHTPOS i18n/Product/Order/Orgnization Design"

---

###組織

####OOAD  
![image](https://farm9.staticflickr.com/8681/16183059249_fe188b9e3b_o.png)

####ERD    
![image](https://farm9.staticflickr.com/8668/15749290953_f15cc90b40_o.png)

###產品管理  

####OOAD    
![image](https://farm9.staticflickr.com/8626/16181652128_1e41667515_o.png)

####ERD    
![image](https://farm9.staticflickr.com/8660/16181655468_131280a9a7_o.png)

###訂單管理

####OOAD  
![image](https://farm8.staticflickr.com/7380/16368385862_0066f049ea_o.png)

####ERD    
![image](https://farm8.staticflickr.com/7298/16183073339_a026b382b1_o.png)

###i18n  

####OOAD  
![image](https://farm8.staticflickr.com/7282/15749312743_588f778dbe_o.png)

####ERD    
![image](https://farm9.staticflickr.com/8573/15746857444_5d59b922ce_o.png)


###ERD產生SQL
使用astah繪製完ERD，可以使用下面方式來產生SQL。
習慣上，我會先把資料庫清空(使用ManagementStudio刪除所有Schema)。
![image](https://farm8.staticflickr.com/7383/16182673810_b99f0ec490_o.png)

至於SQL選項，我是不建議產生drop and cascade，因為sql server指令不一樣。
![image](https://farm8.staticflickr.com/7411/16184197257_9f7c67da1a_o.png)

拿到Management Studio去執行後，應該是可以成功（comment就不加上了）

![image](https://farm8.staticflickr.com/7441/16184205197_fb0456dd77_o.png)


###OOA/OOD的分野
![image](https://farm8.staticflickr.com/7402/16184109569_580cbe881a_o.png)

OOA：基本上需要承接需求面，繪製的人需要有OOD/OOP的基礎。繪製的產物不需要有技術框架上的定義(web框架,後端語言...)

OOD：分為高階和細部設計，高階設計不需要畫出association和aggregation，因為會有涉及效能議題。只需呈現dependency和multipacy（要畫當然可以，但是嚴格就學術探討是不需要）。使用了那個Design Pattern，也可在此畫出來。Package Diagram也盡量畫一畫。
而細部設計，則需要更多牽涉到語言的設計圖。如Java/C#，效能、擴充性、容錯性、解耦合...但是畫這些不要強求能夠codegen，基本上可以是好幾個iteration來完善設計(編寫邊調整設計圖)。

