### 瘋哥Docker講座
[筆記位置](https://onedrive.live.com/view.aspx?resid=98921B778BBE10DC!55037&ithint=onenote%2c&app=OneNote&authkey=!AGTKJE4Rl3nzFx4)
- 技術是架構的基礎
- SOA 與Docker
	不脫於SOA的框架。
- 系統要導入Docker：
	- 資源集中—\>Resource Pool
	- Reusable Component:Wrapper your service

- Micro Service vs Docker
	- 傳統服務顆粒的決定不能太小，加上有網路會有效能問題
	- Docker 就改變了這點，function也是一個service
		![](https://farm9.staticflickr.com/8799/18182338132_79fc507e76_o.png) 中間的connect會是container來決定，所以可以是python或是java等組裝起來。
	- Docker因為是Micro Service所以可以單獨擴充某個微服務。因為大多會是在同一台，所以用些許的效能損失來換取彈性。
	- Consumer端因為支援各種型態的通訊協定，所以可以跨平台。
	- Message Bus大多使用Restful ,queue
	- governance層需要滿足基礎使用，以及可用性。
	-好架構的定義
	- 滿足需求
		- 好的開發者經驗
		- 系統擴充性

### docker 介紹
目前微軟還沒有原生docker支援，還在beta，要了解docker需要先了解VM架構。
#### VM vs docker
vm的guest是可以裝任何的os,docker 啟動的container其實是host os的分身。所以要讓docker 的container為windows os目前還在beta。
docker的container是為了要去share host的資源，所以比較快。但比較被質疑安全性。目前只有linux有（因為比較輕盈），目前要在mac/pc上測試，可以用boot2docker，會啟動一個linux light,但你還是只能寫PCL service，目前還是沒辦法直接寫.net。
- windows container以後會分成core和nano版，後者只能run mono service。以後說不定可以裝queue service在core版的container。
目前的docker api也可以提供docker service的一些profile供查詢或是呼叫。可以作為docker管理，目前瘋哥有寫.net包裝呼叫api進行管理。
#### demo
開啟一個docker速度算很快。image可以儲存vm狀態。
### docker沿革
- hyper-v效能是5%差異，剩下是io問題，是屬於type1，效能高。
docker是type2。
- 啟動docker也是需要docker file，一個image檔。公雲上有一個repo可以存放，(docker hub)，可在上面抓取或貢獻。企業內部也可以建構這樣的環境管理docker。
- VM以前的migration或是擴充性docker會慢慢補上。在此之前和vm是相當的依賴。
- docker正常的應用應該是stateless，下次啟動應該不需要存前次狀態。所以基本上是可以不儲存（看需要）。要存可以另外的機制。
#### 自建一個docker file 並建立成一個image
image共用，但是config可以不同用途做不同設定。而haproxy本身的image因為已經具備reverse和load balance的功能，所以才有辦法。

### .net core
BCL可以讓compiler支援不同平台，
[demo示範](http://video.ch9.ms/ch9/171d/01bf9b0c-2063-4283-9c91-aa46691e171d/VisualStudioDocker_high.mp4)把一個.net程式包裝成image，然後部署到某台vm(@azure)，也支援remote debug。這是因為微軟有做docker api的呼叫包裝，但比較特色就是remote debug，方便於線上環境的trace。
[windows container](https://www.youtube.com/watch?v=BRaEC1KKJsg)

### docker machine
建構docker host 的方法，可以建立在local或是在公雲或私雲。
也就是建構這些docker都可以自動化。
Swarm：可以自定建立docker host的方法，是要建立成cluster的樣子或是其他。
Compose: 可以用來安排哪些swarm上的docker container要執行幾個，或是角色。
[建構docker machine](https://www.youtube.com/watch?v=M4PFY6RZQHQ)

### docker的資源控管
可以限制每個docker container的資源，cpu/memory等，可以透過設定也可以寫死在image裡面。