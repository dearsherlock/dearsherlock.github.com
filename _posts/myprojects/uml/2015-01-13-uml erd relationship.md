---
layout: post
category : UML 
tagline: "indentifying  v.s. non-identifying"
tags : [UML,ER Diagram]
title: "UML relationship"

---

### 前言
最近在畫一些Model,用到新的工具就剛好筆記一下。以免自己以後忘了。
先說這是astah uml圖的工具。其他工具應該是差不多。

在畫ERD 圖的時候，關係線會有兩種形態：Identifying和Non-Identifying

而其實在實作上都可以做到，只是看要不要這麼嚴謹的在Persistence層做這麼強的規範。

### Identifying
如下圖，Company和Store之間的關係，因為是一對多，所以就會在Store Table 增加一個欄位來做關連。這種關係你可用Identifying，然後會要求CompanyId會是PK之一。

![image](https://farm8.staticflickr.com/7524/16080759958_b447a59004_o.png)

###Non-Identifying
透過以上你可以完成，但其實你也可以不用這麼嚴謹。用ID是Store Table的PK，然後建立FK，其實也是可以。這種情形也滿常出現在CodeTable的對照，如圖中，Company的Status需要存在於Code_Orgnization，但是Status不見得是Company的PK，以FK存在即可。但真的你想要把Status當Company的PK，就真的得思考這樣的意義為何，或是會喪失一些彈性。
![image](https://farm9.staticflickr.com/8602/15645894644_408bbe5a16_o.png)

