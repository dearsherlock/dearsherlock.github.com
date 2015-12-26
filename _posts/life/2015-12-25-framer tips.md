---
layout: post
category : design 
tagline: "Design"
tags : [Design,Product,Research]
title: "Framer 小秘技"

---
## 如何增加工作效率


### Snippets

![image](https://farm6.staticflickr.com/5716/23590621069_8f011811f6_o.png)

當然，你也可以自己建立新的，如選單中的Example就是自定的。

你可以點選Show Snippets Folder...然後打開Example.coffee，改一下如下比較快。存檔時檔名就是Snippet的名稱
![image](https://farm6.staticflickr.com/5671/23590823769_89bb2e8fd3_o.png)

如上做完存檔後，就會出現fadeout這個自定snippet
![image](https://farm6.staticflickr.com/5707/23932621416_8661c704e0_o.png)

之後就可以快速引用

### 預設子

以下幾個預設子都可以被改變，不改可以直接用。

- Framer.Defaults.Layer
» {backgroundColor:"rgba(0,124,255,.5)", width:100, height:100}  

{%gist dearsherlock/52cbba41d4d74235ad08%}
![image](https://farm2.staticflickr.com/1646/23963835215_5765ecf6d1_o.png)

- Framer.Defaults.Animation  
» {curve:"ease", time:1}


{%gist dearsherlock/34d4e61d9f092d4298af%}


### 快捷鍵

- ⌘R  = 重新載入
- ⌘D  = 叫出help document
- ⌘I  = 進行import
- ⌘⇧I = 強制重新import （用於修改import後又修改)
- ⌘/  = 整塊註解加上#，再按一次會把#刪除
- ⌘]  = 縮排
- ⌘[  = 凸排


### 基本Util
[在這裡的Utilities函式庫](http://framerjs.com/docs/#utils.utilities)十分有用。

- Utils.modulate(value, [a, a], [b, b], limit) 
  以value在[a,a]中的比例，求出在[b,b]區間中的值，有時會拿來算攝氏和華式的換算，或是在調整某個值的時候，轉換值與畫面刻度之間的換算。
 	
 `Utils.modulate(celcius, [0, 100], [32, 212])`

- 

