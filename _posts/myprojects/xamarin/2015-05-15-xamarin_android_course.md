### Xamarin ioS 課程

#### 環境設定 
- ios要在裝置上開發測試就要付錢和一堆複雜的程序。故建議用虛擬器（xcode自帶)
 - Xamarin 的帳號若是付費可以支援四台，若是試用的可以支援兩台。從官網直接註冊會是Star版本，需要到deploy的時候會問是否要試用才會轉換。建議直接從visual studio進行註冊。
- 建議使用vmware免費版的進行安裝黑蘋果，但是還需要裝個破解的東西。之前有些黑蘋果啟動之後網路會不行。
-  最新規定要上架的app都是支援64bit，就是用一般，classic是32bit，所以若要上架就用一般(universal)。
#### ioS介紹
- Storyboard可以控制流程，但不建議所有都畫在一起，因為會很慢也很亂
- AppDelegate.xs:處理系統面的事件如推播、縮放、重新開啟等
- Info.plist：相當於AndroidMenifest.xml
- 因為Xamarin不支援編輯xib(單一頁activity)，需要交由xcode來開發，但是因為又要多熟悉一套開發工具，所以現在多建議直接用storyboard。若硬要也可以，就建立一個viewcontrol，就會建立了一個xib和control。
- Deployment target要注意，是最小滿足的版本，可以向下相容，但不能向上。
- 若有多個storyboard要選擇啟動的，可以到專案設定中設定。
- 建立control的方式：從storyboard的view，點選屬性輸入control的名稱，按下enter就會幫你建立。但是缺點是無法傳參數，比較不彈性。（需要使用Segue，但就會變成所有的導覽行為都寫在一起了...）
- 生命週期：![](https://farm6.staticflickr.com/5341/17472487610_c9ed8aa003_o.png)
	- viewDidAppear:使用者已經看到。
	- viewWillDisappear:使用者還看的到。
	- Home鍵縮小是另外的事件去判斷。
	  - 背景執行：目前還不支援app去背後執行。
- 最新版的xcode會限制mac os的版本，要下載新的sdk是用xcode去裝。但也要看xamarin有沒有更新。
- XIB的事件要建立：需要用xcode打開xib檔案，切換到.H檔，把控制項拉到.h，然後進行命名程序，選擇outlet進行命名，關閉xcode回到xamarin studio，然後點選control.cs進行註冊事件。若是用xib建立事件action到.h，這種就是不能使用async事件，若要的話就是用自己註冊事件的方式來建立。所以其實還是很難。
- 觀察發現，ios app雖然預設有control這樣的對應(MVC)，但是其實跟codeinsight還是很像，也是屬於view等級，或是做了太多處理UI的事情。
- Storyboard：命名控制項直接對name設定就好。事件也是用設定就好，也支援建立事件。
- Layout: iOS是需要給絕對位置。但因為不同解析度會有不同影響，所以要設定約束條件(constrain)，其實有點像margin，且設定了其中一個，也要設定其他的，不然會有警訊。
#### 控制項
- Switch：設定的結果不是從Selected抓，是從On來抓
- CheckBox和Radio：ios沒有
- AlertView：不限有幾個按鈕，太多會產生scroll效果
	![](https://farm9.staticflickr.com/8747/17664815981_218543a3f5_o.png) 
- 可以用箭頭切換view來設定啟動畫面
	![](https://farm9.staticflickr.com/8689/17664861315_60b075913f_o.png)
- 
#### 巡覽
- 一開始會用windows啟動，然後把viewcontrol載入。進行顯示
- 若有需要巡覽，則要塞入Navigation Contorller，然後要設定他的RootViewController，決定要用哪一個View顯示。
- 跳到下一頁是push，上一頁是pop
	![](https://farm8.staticflickr.com/7671/17044905363_a967afcd77_o.png)
  - 建立導覽十分簡單，可以設定已經存在的rootviewcontroller
- 針對按鈕進行導覽時，會自動產生導覽列（上方有back，back按鈕的文字會根據上一頁的Title產生）
- 可以自己設定左邊的按鈕長相，也要同時設定事件。
- 舊版的Xamarin會有StoryBoardid設定不上去的問題。
#### TableView
- 相當於ListView，每一列叫做Cell。也有預設幾種template可用。若選的template沒有某個property,但是在設定cell的時候去設定他，就會出錯(選了沒description的template卻去設定description就會發生exception)
- DataSource的Class中若資料有分組，則需要依據session來回傳數量。
- 回收機制跟Android一樣。
- lab4是有分群資料的tableview
- 刪除動作只需要給予”刪除標題”就可以了，不需要做特效或是UI呈現。
- 自定cell，因為會自動判斷是否回收，所以不需要判斷是否為null。
#### 共用程式碼
- 2013版本以後才有Share Project，編譯出來其實是把程式碼copy到各平台的project。2012以前的可以用File Link，加上條件是編譯可以做出不同平台上的些許不同變化。2012前若對shareproject參考會有錯誤。需要是加入檔案為連結的方式。(shareproject其實也是一樣的行為) 
- PCL，會編譯成一個dll，限制較多，如File等
- 條件式編譯是放在project的條件式編譯符號。
- pcl會要求至少一個微軟的共享平台，就選.net store就好
- pcl不會加入appconfig,但需要自己在把一些webservice的基礎建設弄好。
- WebApp還要看手機廠商對於webview元件的寫法，所以會有效能和相容性的不同。







Question:全螢幕？沒有訊號列
  Ad-hoc/appstore?![](https://farm6.staticflickr.com/5465/17041714004_b309c75f99_o.png)
  純粹是用途不同（發行用或上架用）
  
  
  
  https://youtu.be/RFaUdw1gClQ
  https://youtu.be/OPMJIfgAOAY