---
layout: post
category : Chrome 
tagline: "css調整"
tags : [chrome,extension]
title: "Note"

---

請先到以下目錄，找尋您想要修改的plugin。
/Users/username/Library/Application Support/Google/Chrome/Default/Extensions

至於你會發現是一堆亂碼，可以從 chrome://extensions/ 看到你要改的plugin 名稱。

新版momatum多了：座右銘有出處。

改了css/style.css
dashboard.html  
manifest.json
app/todo.js
app/main.js
app/focus.js
app/background.js


出現change:dayEnd
todo.js,quote.js,focus.js,background.js 但是出現使用dayEnd的是main.js


出現_trackEvent,但都是push,並沒有拿這個關鍵字來做什麼。應該只是把事件註冊進去。
todo.js,message,js,focus.js,main.js


找尋關鍵bug
改了css/style.css  //not important 
dashboard.html  //not important 
manifest.json //not important 
app/todo.js   //effect bug by change models
app/main.js   //後來在這裡解決了所有的問題。
app/focus.js
app/background.js