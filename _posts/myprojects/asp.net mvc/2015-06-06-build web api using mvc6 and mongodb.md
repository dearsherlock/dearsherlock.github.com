
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


### 依據以下元件要完成

![image](https://farm9.staticflickr.com/8845/18009893043_47e159a058_o.png)
MongoConfig
{%gist dearsherlock/a929b1390b0c5dc2af7e%}


MongoServiceBase
{%gist dearsherlock/3fa617a057cba2b0cf6a%}

PinInDataService
{%gist dearsherlock/e30b799b2cf858ae6859%}

PinInController
{%gist dearsherlock/54bf2156e2d19022fb8e%}



網頁端，使用非同步ajax取回json資料，若要加上google analytics如下範例。另外加上bootstrap支援響應式互動、加上open graph標籤。

{%gist dearsherlock/c5e69e533e2089c52ed8%}


### 產生loading icon
參考這裡
http://jsfiddle.net/jveldboom/c73MQ/2/
icon可以在這裡產生
http://www.ajaxload.info/


### Deploy 
Mongodb匯出比較簡單，直接copy目錄過去就可以了
IIS就會遇到一些問題，如錯誤：0x80070021
![image](https://farm1.staticflickr.com/292/18396901670_194f68225e_o.png)

這是因為win2012的安全性，需要把一些元件另外安裝[如下網址](http://stackoverflow.com/questions/20048486/http-error-500-19-and-error-code-0x80070021)

安裝以下元件
![image](https://farm1.staticflickr.com/331/17962162764_4999fea418_o.png)
安裝過程
![image](https://farm9.staticflickr.com/8883/18398665879_9a6664fb92_o.png)

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




若有要加上copy 到剪貼簿
http://www.steamdev.com/zclip/#download（不支援ajax）

http://zeroclipboard.org/?version=v2.2.0&type=amd
以上好像都不支援ajax

若要文字結合背景產生圖片
http://www.allenj.net/archives/3793




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