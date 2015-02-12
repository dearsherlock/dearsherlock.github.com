

ASP.NET MVC TUTORIAL

教學課程
http://www.microsoftvirtualacademy.com/training-courses/introduction-to-asp-net-mvc?m=9877&ct=31114

[參考source code在此][1]


### Model
沒有一定要放在Models目錄下，只是習慣問題。
有以下的各種描述放到Model的屬性中來完成自動化，避免把這些寫在control裡面。

1.Validation
Required/StringLength/RegularExpression/Range
2.Input controls
- HTML5
3.Available Data Types
- CreditCard
- Currency
- EmailAddress
- Password
- Url

### Code First Entify Framework
改了一些model之後，需要對資料庫更新，但有時候會失敗。建立control時會產生View的樣板，是自動產生的(Scaffolding)。

Control是在runtime產生，Scaffolding是在Design Time產生view

### Entity Framework
1.目前已經整合到MVC，且有對應一個Scaffolding來自動產生程式碼。
2.relation和FK都可以透過一些鍵值來產生。背地裡會有隱藏id來對應(通常就會是一個下拉式選單)
3.virtual為lazy loading
4.seed 方法：建立範本資料的method
5.Migration:更新欄位時要更新資料庫，entity framework會知道這些變化。會有兩個點AB區段來監看變化。

### Visual Studio web編輯
1.可以一次用多個瀏覽器來對照程式
--\>使用browse with...
![image][image-1]
2.開啟瀏覽器時可以用下方的web essential工具列inspect來看,也可以用Design直接修改結果，然後會改回source code。這是免費的外掛（vswebessential）。跟visual studio 的browser link一啟用。十分有用。也可以用essential改變被景色，然後push 改回css。也可以有協助快速編輯的工具(zen coding)，寫個簡單的語句，就會自動code gen(html或是css)，按下兩次tab就可以了。

![image][image-2]

3.codelens：在程式碼上面會出現一些資訊：
![image][image-3]


### asp.net mvc 之自動控制項
要補足控制項的不足，就需要加上Action在Control上，以完成更多功能。
#### 加上Action
- 這些方法會有一些特徵，有一些參數傳入和傳出
	1. 回傳
	- ActionResult
		 - FileResult
		- JsonResult
		- ViewResult 大部分是這種
	2. Parameters
	- Normal parameters
	- MVC model binding

- return view()算是一種helper method，會自動產生。
- 請求會去問control，control處理一些事情，取得需要的model，然後呼叫view(model)方法來自動產生對應的view。

##### Get/POST
而MVC通常是用Get 透過httpget來產生畫面，透過httppost來接收資料，所以在方法中，可以看到若是沒有參數的大多是get，有參數的要看上面的annotation。

##### model binding
預設會有一個model binder，但你也可以去客製化。絕大部分會滿足需求。客製化binder之後就會讓model變複雜，難以追蹤(經驗談)。

### tip
1.Alt+F12叫出peek，可以在同一個檔案中顯示相關的類別程式
2.重新修改model後可以把datasource刪除。避免migration不成功導致runtime error

[1]:	http://aka.ms/mva-mvc-source

[image-1]:	https://farm8.staticflickr.com/7430/16384734065_f93f98913a_o.png
[image-2]:	https://farm8.staticflickr.com/7342/16194655748_c2359a8705_o.png
[image-3]:	https://farm8.staticflickr.com/7430/16384734065_f93f98913a_o.png