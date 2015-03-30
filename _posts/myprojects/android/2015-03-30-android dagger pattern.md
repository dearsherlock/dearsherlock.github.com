---
layout: post
category : Android 
tagline: "Dagger Design Pattern"
tags : [Android,Design Pattern,Dagger,Injection]
title: "Android Dagger Pattern"

---

### Dagger

[Dagger系列之一](http://antonioleiva.com/dependency-injection-android-dagger-part-1/)  
[Dagger系列之二](http://antonioleiva.com/dagger-android-part-2/)  
[Dagger系列之三](http://antonioleiva.com/dagger-3/)


### 中文範例介紹
http://blog.csdn.net/zjbpku/article/details/18732295


### 會用到的Annotation
@EBean,@RootContext,@UiThread是AndroidAnnotations下會用到的。

＠EBean會在compiler time產生XXX_.class


### Dagger的Inject功能
加上＠inject。

 - 可以注入建構子
 - 可以注入區域變數
 
 若區域變數是用注入的方式建立，則區域變數的本身建構子也要宣告成是@Inject，否則會出錯。且會呼叫＠Provider的方法來產生。
如下  
{%gist dearsherlock/f918e79d69bc224ace38%}

 
### Module介紹
 
 若有定義@Provider，則需要放置在@Module的類別中。而@Provider大多就是定義要用哪一個類別來實作。
 
### ObjectGraph
 Dagger用此來管理並組織依賴關係。會是程式的總起點。通常會放在Application中宣告。
 
 
### 範例
 ![image](https://farm8.staticflickr.com/7633/16768338517_f3995d7241_o.png)

如上，每個有定義@Provider的method，都會放在有宣告@Module的類別中。
若你要拆開，Fine!請宣告一下有includes（如圖中includes。）

而下面是定義provider的mrthod範例。
{%gist dearsherlock/c633145783de34276331%}

下面是module中定義includes的寫法，

{%gist dearsherlock/ce9ceb7dc012fa0c7709%} 


### 完整程式
[Github](https://github.com/square/dagger/tree/master/examples/simple/src)

比較重要的列在下面。  
{%gist dearsherlock/28bb1e693603992484a6%}
 
{%gist dearsherlock/195e9977e2761472836a%}

{%gist dearsherlock/8c54503ef96485ed7b5b%}
 
{%gist dearsherlock/a69323c00df9c3f8ede0%}

{%gist dearsherlock/530648e54b3b418fef2e%}

{%gist dearsherlock/291ae2b7b16ccd2807c7%}
 
 
 
 