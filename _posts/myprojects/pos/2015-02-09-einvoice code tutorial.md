

### 系統部署圖
Invoice Proxy Server: Azure Pack建立的環境需要為domain name，但頂尖限制無法使用domain name，所以建立一個proxy server，若頂尖解決了，就在小白機設定就好。讓小白機連線到電子發票小平台。

Schedule Server：純粹是連線資料庫做排程用。

SIT: 與行銷高手共用同一個Server，之後可以考慮切開環境。

csvhelper: 讀取字軌轉換用。


isv service/account service ：為供裝用的service

eiconsole:最後deploy的project
eiwebapi:小白機取配號，上傳到數分，若傳送失敗會放在global來重送數分。



### information model
帳號認證：是使用AD來認證。

global db：所有的共用資料庫資訊
org db：不同的org所專屬的db,license是沒有差別，每個客戶有可能有會不同的需求，所以盡量不同db來存放，也可以滿足資安需求。但唯一缺點就是更改table schema需要各個db需要改。

### Azure env

Website:放eiconsole
VM:做排程用，掛windows service。
DB：在SIT上無法使用client連線，但Productiuon可以

目前試用帳號為同一個org不同帳號。可以做到看不到其他帳號。但當然跟POS同一個org是否可以看到其他user會有不同。

### 排程
數分若停機，排程要避免重送email，設定systemconfig.chtvaccallbatch為true,則會累積發票，直到設成false才會發出。
emaillist為逗號隔開。


