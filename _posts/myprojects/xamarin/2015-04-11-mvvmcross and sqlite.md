


### MVVMCross and SQLite

1.開啟你的PCL專案，已經裝了MVVMCross之後，你還要裝一個MVVMCross Sqlite Plugin
![image](https://farm9.staticflickr.com/8790/17105693185_a387d3c2fd_o.png)

2.建立你的entity class
{%gist dearsherlock/f5cdad51b25b0db9397e%}

3.定義你的資料存取介面  
{%gist dearsherlock/d43e71aa4b1836d54edc%}

4.實作資料存取介面
{%gist dearsherlock/31c45f8431c02bee4330%}

5.把你的viewmodel中的command改寫一下  
{%gist dearsherlock/7504c41005054fbe491f%}


### 疑難雜症

#### SQLite.SQLiteException: no such function: equals
請改用StartWith

#### 在實作dataserivce的程式中有一段factory.create("xx.sql")是用來？
用來建立資料庫連線，當然不用特別去設定，它可以視為是db的instance名稱，若換了，就會重新建立新的。app程式關閉重新執行會用舊的(資料會保存)
