

ASP.NET MVC TUTORIAL

教學課程
http://www.microsoftvirtualacademy.com/training-courses/introduction-to-asp-net-mvc?m=9877&ct=31114



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
2.開啟瀏覽器時可以用下方的web essential工具列inspect來看,也可以用Design直接修改結果，然後會改回source code。這是免費的外掛（vswebessential）。跟visual studio 的browser link一啟用。十分有用。也可以用essential改變被景色，然後push 改回css。也可以有協助快速編輯的工具(zen coding)，寫個簡單的語句，就會自動code gen(html或是css)，按下兩次tab就可以了。

![image](https://farm8.staticflickr.com/7342/16194655748_c2359a8705_o.png)


### tip
1.Alt+F12叫出peek，可以在同一個檔案中顯示相關的類別程式
2.重新修改model後可以把datasource刪除。避免migration不成功導致runtime error
