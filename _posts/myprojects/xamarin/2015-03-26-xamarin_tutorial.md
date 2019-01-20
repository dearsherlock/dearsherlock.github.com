---
layout: post
category : Xamarin 
tagline: "Tutorial Projects"
tags : [Xamarin,Tutorial,Sample]
title: "Xamarin Tutorial Projects"
imagefeature: https://farm9.staticflickr.com/8714/16665447317\_5ece224043\_h.jpg

---



### Xamarin Tutorial
目前在Vs2015上是可以執行。

#### DailyDilbert Project
因為Rss提供已經不再，所以不能執行。
http://feed.dilbert.com/dilbert/daily_strip

所以我改用Flickr的rss，程式改如下：
{%gist dearsherlock/7e29650709b240d8072e%}

你也可以取以下的rss
`https://api.flickr.com/services/feeds/photos_public.gne?format=rss2
`

執行起來如下：
![image](https://farm9.staticflickr.com/8715/16313994273_95b485260f_o.png)

點選list進行詳細
![image](https://farm8.staticflickr.com/7622/16313996373_09edfba742_o.png)

[改完的GitProject在這裡](https://github.com/dearsherlock/XamarinCross_Tutorial/tree/master/DailyDilbert)


### Dialog Example

用到了MvxDialogActivity、MvxDialogActivity

#### 頁面的組成
頁面的組成可以用
 - RootElement 
    - Section（類似GroupBox）
    		- EntryElement
    		- BooleanElement
    		- CheckboxElement
    		- RootElement （類似GroupBox，可以再往下包元件）
    		
#### 屬性的Binding

` new EntryElement("Login", "Enter Login name").Bind(bindings, vm => vm.TextProperty)
`    			
.Bind方法的參數中binding為要綁定的來源，後面就是你要Binding到Context的哪個屬性，通常會綁定到這些元件的Value屬性。  
ex:  
 
| 類型                | ViewModel定義的屬性 | 備註                                       |
|---------------------|---------------------|--------------------------------------------|
| TextBox             | TextProperty        |                                            |
| EntryElement        | PasswordProperty    | 設定Password = true 就會變成密碼型態的欄位 |
| BooleanElement      | SwitchThis          |                                            |
| CheckboxElement     | CheckThis           |                                            |
| RadioGroup          | RadioSelected/      |                                            |
| StringElement       | StringElement       |                                            |
| ButtonElement       | GoSecondCommand     | 綁定到元件的SelectedCommand                |
| StyledStringElement | GoSecondCommand     | 綁定到元件的SelectedCommand                |
| StyledStringElement | GoSecondCommand     | 綁定到元件的BindableElementsCommand        | 




#### View和ViewModel的綁定

{%gist dearsherlock/8e22ed3d49f6653d6f4e%}

| View       | Initial Method            | View Type               | ViewModel       |
|------------|---------------------------|-------------------------|-----------------|
| FirstView  | CreateInlineBindingTarget | MvxDialogActivity       | FirstViewModel  |
| SecondView | CreateInlineBindingTarget | MvxDialogActivity       | SecondViewModel |
| ThirdView  | CreateInlineBindingTarget | MvxDialogActivity       | ThirdViewModel  |
| LinearView | CreateInlineBindingTarget | MvxLinearDialogActivity | LinearViewModel |
|            |                           |                         |                 |


要產生View，是透過ViewModel的對應（如上表）來啟動
 {%gist dearsherlock/2b88311ecade1366b164%}
 
 
也可以看到範例ThirdViewModel中有不同的元件來顯示同一個model。ex:  
 - CustomStringElement（實作StringElement、IBindableElement）  
 - CustomViewElement （實作ViewElement、IBindableElement，使用CustomPersonView.axml作為template）

以下是把axml載入到CustomPersonElement當成View的寫法：
{%gist dearsherlock/05e98142b1878d5299b8%}


要把List物件綁定到CustomStringElement元件的屬性上：
{%gist dearsherlock/ea1bac25a4d0399a408f%}

#### MVXDiaglogActivity和MvxActivity的關係
![image](https://farm9.staticflickr.com/8704/16886978269_fa242ff872_o.png)

### MVVMCross的Property snippet
如下，建立一個附檔名是.snippet，
放在vs目錄下如：C:\Users\sherlock\Documents\Visual Studio 2015\Code Snippets\Visual C#\My Code Snippets

{%gist dearsherlock/cebc229fc146d23c9530%}

如同該snippet所說，按下propm就看到,tab兩下可以呼叫出來了
Sample如下：  
{%gist dearsherlock/36656aacd8e6f09ba910%}

若是command的也可以參考如下  
{%gist dearsherlock/344085576a2ac773168d%}

### 簡單的換頁（Pager）

https://github.com/dearsherlock/XamarinCross_Tutorial/tree/master/Cheesebaron.MvvmCross.Bindings-master

