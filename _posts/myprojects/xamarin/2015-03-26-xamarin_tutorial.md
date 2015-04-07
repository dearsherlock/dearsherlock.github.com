---
layout: post
category : Xamarin 
tagline: "Tutorial Projects"
tags : [Xamarin,Tutorial,Sample]
title: "Xamarin Tutorial Projects"
imagefeature: https://farm9.staticflickr.com/8714/16665447317\_5ece224043\_h.jpg
covereffect: slice

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
