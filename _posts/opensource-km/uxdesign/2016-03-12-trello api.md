


Trello api 使用

Trello是個很好用的進度管理工具，所以我們大多會把專案過程中的資訊放在上面。
不過若要觀察專案中的一些表徵，還是需要自己呼叫API去抓些數據

參考技術網站
http://blog.getcorrello.com/2015/10/14/build-your-own-dashboard-on-the-trello-api/

1.參考網站建立第一個html，該網頁的功能大概就是讓你授權，把token存起來到cookie中，然後呼叫api所擁有的board抓回來，board選取後，呼叫該board的一些相對資訊。

如下：

{%gist dearsherlock/4780c7a4c70c83d90b31%}

2.
