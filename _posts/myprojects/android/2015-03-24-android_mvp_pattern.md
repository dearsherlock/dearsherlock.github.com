---
layout: post
category : Android 
tagline: "MVP Design Pattern"
tags : [Android,Design Pattern,MVP]
title: "Android MVP Pattern"

---


### Android MVP Pattern
[文章出處](http://antonioleiva.com/mvp-android/)  
[Github出處](https://github.com/antoniolg/androidmvp)

### Android MVP Pattern 介紹
有好心人寫出的Pattern，基本上跟MVVM比起來，少了複雜的template，
範例如下：
![image](https://farm8.staticflickr.com/7588/16911769935_ddbe0152d0_o.png)

基本上解釋如下：
View就是Activity，透過interface定義了UI的呈現，如LoginView（註冊了帳號錯誤、密碼錯誤的顯示方式）以及按下按鈕的事件，而這些事件可能是被Presenter觸發(密碼錯誤或是帳號錯誤)或是觸發Presenter（進行登入）

這裡你可以看到Presenter還負責組裝View的事件，如以下Presenter所做的事情，View不需要去顧慮：
1.登入要呼叫哪個control進行驗證，且需要View顯示(透過interface)Loading  
2.control和Presenter的關係可以透過listener來解耦合  
3.當登入錯誤需要呼叫View顯示哪種錯誤(處理listener所接收到的錯誤)。  
4.當登入成功需要呈現什麼？回首頁或是...行為  



#### 另外的範例

一樣是透過MVP來取得資料(在Presenter層)， 
![image](https://farm8.staticflickr.com/7585/16911307892_e84dbecd50_o.png)


### MVP 缺點
雖然View少了一些類似MVVM的前置設定，但沒有了雙向綁定，View仍然需要透過原本的方式來取得值。  
{%gist dearsherlock/4bcbe77466dfed5552ae%}

若要塞值的話也是透過尋找，取代...  
{%gist dearsherlock/2de69853135efbd1bc26%}

### Q&A

#### 若要應用到Service取得資料
作者認為此Pattern只處理UI，若要用到服務取資料，則使用Observer pattern 或是 event bus。

#### 如何更快處理View和Presenter的註冊
作者建議Dagger來進行Injection，網站如http://square.github.io/dagger/,並且使用scope modules來進行記憶體的管理和物件的控制

#### 如何處理非同步工作
作者建議使用android-priority-queue，這是官方的建議作法來改善UX，使用的範例如下：

https://github.com/path/android-priority-jobqueue
作者是使用：
http://square.github.io/otto/
![image](https://farm9.staticflickr.com/8720/16912582511_5b78791ce6_o.png)

#### 如何處理各層次之間的資料傳遞
作者建議閱讀他寫的一些有關於『DI and Dagger』的文章。使用DI就可以解決這些事情。  
[Dagger系列之一](http://antonioleiva.com/dependency-injection-android-dagger-part-1/)  
[Dagger系列之二](http://antonioleiva.com/dagger-android-part-2/)  
[Dagger系列之三](http://antonioleiva.com/dagger-3/)

#### 如何處理網路之間的通訊？
作者是建議使用Retrofit and OkHttp，尤其是推薦Retrofit


####有人問及是否有使用過RxJava，可以解決很多非同步的問題，但可能會需要寫很多儲存狀態的最佳化程式


#### 如何寫出一個Materialize app
請參考[這裡](http://antonioleiva.com/materialize-app/)
以及[這裡](http://antonioleiva.com/material-design-everywhere/)



### 要能在Android上寫出Annotation
優點：程式碼更容易乾淨維護
http://androidannotations.org/
中文介紹：http://blog.csdn.net/zjbpku/article/details/18676149



