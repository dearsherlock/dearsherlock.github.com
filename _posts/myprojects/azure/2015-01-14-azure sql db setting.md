
---
layout: post
category : Azure 
tagline: "Microsoft SQL Database Setting"
tags : [Azure,Devops]
title: "Azure Resources: SQL Database"

---

###介紹

以下介紹Azure的DB設定

###步驟

1.設定樣板  
![image](https://farm8.staticflickr.com/7539/15657028643_6e79c4b122_o.png)

2.選擇DB的計價等級  
![image](https://farm9.staticflickr.com/8651/15657043603_b29c3b9b26_o.png)

3.設定資料庫定序  
![image](https://farm8.staticflickr.com/7500/16275173841_fa02ece5ed_o.png)

4.接下來就會開始建立資料庫  
![image](https://farm8.staticflickr.com/7547/16091100267_5c086efbe0_o.png)

5.建立好後出現在dashboard就好了  
![image](https://farm8.staticflickr.com/7509/16090847919_a5ba7dd471_o.png)

6.建立好的DB可以從屬性那邊看到連線資訊
![image](https://farm9.staticflickr.com/8589/16090883389_7f404648b6_o.png)

7.剛建立好後用Visual studio連線也許會出現以下錯誤訊息。
Cannot open server 'xxxxxdb' requested by the login. Client with IP address '223.136.xx.xx' is not allowed to access the server.  To enable access, use the Windows Azure Management Portal or run sp_set_firewall_rule on the master database to create a firewall rule for this IP address or address range.  It may take up to five minutes for this change to take effect.Login failed for user 'xxxxxx'.

這是因為安全考量，若要遠端登入SQL server 需要打開防火牆設定。請參見：http://msdn.microsoft.com/en-us/library/azure/ee621782.aspx
點選你建立好的DB 資源，點選上方的Open In VisualStudio，就會出現以下。
![image](https://farm9.staticflickr.com/8585/16251161756_e108df06ec_o.png)


8.防火牆設定好後，使用VS連線，就可以連上。
![image](https://farm8.staticflickr.com/7496/16089608868_793814e31d_o.png)