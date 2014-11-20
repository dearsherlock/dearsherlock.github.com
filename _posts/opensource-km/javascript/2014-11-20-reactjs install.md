---
layout: post
category : Javascript 
tagline: "Javascrip世界"
tags : [javascript,resource,react.js]
title: "React.JS環境安裝"

---
###安裝Server

安裝套件  
`sudo npm install -g react-tools `  
執行邊測邊改  
`jsx --watch src/ build/`  

###範例結構

![image](https://farm8.staticflickr.com/7529/15825004431_5e393efc7d_o.png)

1.先在根目錄建立一個helloworld.html，裡面是含有jsx語法的js網頁。內容大致如下：  
{%gist dearsherlock/f6c28bee1c343fd29a1b%}

2.若是要拆開成兩個檔案，也是支援的！如上面結構圖，html純粹只是include src 的js，而放在src中的js就寫一些邏輯。
{%gist dearsherlock/4cc1b6ad21340a62d4df%}

{%gist dearsherlock/fa900f8bb897bf0a07f8%}

![image](https://farm8.staticflickr.com/7525/15211766673_7f023c80a9_o.png)

3.執行`jsx --watch src/ build/` 可以即時修改，會自動建置到build目錄下。如下，就是build目錄下的js，而你的html是要引用src或是build目錄下的js都可以
{%gist dearsherlock/d4839407e05796a155d8%}

###CHROME異常

![image](https://farm9.staticflickr.com/8668/15641873938_147151aa0e_o.png)

網路上是說加上後面的參數就好。
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --allow-file-access-from-files --disable-web-security
參考連結：[如何在chrome加上參數](/mac/customerize%20your%20app%20in%20mac)
