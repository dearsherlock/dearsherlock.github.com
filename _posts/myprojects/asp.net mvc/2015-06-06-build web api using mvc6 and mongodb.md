
### Web api
新增Controller之後請加上method，可以是一個參數以上，如下，當然不是只有get/post，也還有put/del等指令

{%gist dearsherlock/fff3535cd0871f86a9a7%}

網頁你若想要塞多個參數，可以如下：
{%gist dearsherlock/699a30abf7cc391c35f7%}

若測試過程不想要開fiddler，其實你可以用開發人員選項，打開網路功能，點下錄製，就會記錄了。
![image](https://farm1.staticflickr.com/553/18513522922_c3413b1215_o.png)

另外滿有趣的是，controller的method名稱其實不是很重要，重要反而是參數名稱。

ex:
寫個hellocontrol,其實api存取的網址是api/hello?normal=xxx&joke=xxx



### QA
雖然本來以為有下面的問題，但後來查證是我自己串url寫錯了～

若是發出『具有潛在危險Request.Form 的值已從用戶端偵測到』
則可以如[這篇文章](http://www.dotblogs.com.tw/jellycheng/archive/2012/10/23/78807.aspx?fid=72450) 設定，在web.config設定，或是在頁面那邊設定。

是因為用戶端在欄位輸入了Html語法，當送出動作後，被判斷為具有淺在危險的程式碼，
這時可以在該頁面加上validateRequest="False"
          <%@ Page Language="VB" AutoEventWireup="false" CodeFile="sys_111.aspx.vb" Inherits="sys_sys_111" validateRequest="False" %>
或是在web.config 設定關閉：
          <system.web>
              <pages validateRequest="False" />
          </system.web>
即可避免資料送出後系統將Html語法判斷為惡意程式碼。



### 參考
Using MongoDb With Web API 2
http://www.codeproject.com/Articles/790801/Using-MongoDb-With-Web-API

使用MVC和mongodb來建立一個web api
http://tattoocoder.azurewebsites.net/building-vnext-web-api-using-mvc-6-mongodb-azure/

建立一個空白的web api範本
http://www.asp.net/web-api/overview/getting-started-with-aspnet-web-api/tutorial-your-first-web-api

避免大量存取/ddos
http://www.microsoft.com/taiwan/technet/iis/expand/DynamicIPRestrictions.aspx

可以從controller產生web程式
https://msdn.microsoft.com/zh-tw/dn751508.aspx