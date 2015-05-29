### Xamarin Android 培訓課程

- Android 5.0可以在裝載APK的時候就編譯成機械碼(內建)，所以會加速流暢度。
- Resource下的layout也可以針對解析度設成不一樣。
- Android中的Application是共用的，複寫通常是因為要讓各種activity有共通行為，或是共用屬性，可以讓activity呼叫
- Activity的生命週期：oncreate在開啟畫面後就不會再重新產生
   - 開啟app會oncreate->onstart->onresume
   - 	若是縮小後就會進入onpause->onstop...
   - 若是回app重新開啟後會回onrestart ->onresume
   - 若是關閉app:onpause->onstop->ondestroy
   
   ![image](https://farm9.staticflickr.com/8850/17622023965_f9d6cc8a9c_o.png)	
- axml純粹只是讓xamarin辨識，實際上和xml沒差
- 如果activity上面設定了兩個mainlauch=true就會變成兩個app
- Log.WriteLine(LogPriority.Info,"xxxx");
- RadioGroup中的Radiobutton若要有單選效果，不能還用其他layout來包裝，不然會失效。
- dp可以解決螢幕密度的問題，但是不能解決排版問題。（同一種解析度，不同手機會有不同密度ex:視網膜）
- processdialog可以限制使用者不能取消，setcancelable(true)
- 建立activity，若是單純用StartActivity(type)就沒有辦法傳參數，用Intent才可以。
- Intent要互傳複雜性的資料，可以考慮用Application中的變數當成暫存，或是從DB。目前只支援簡單格式
- Activity Flag
  - ClearTop,可以清掉其他stack中的activity。
  - Nohistory,開啟的不存在於堆疊中，按了回上頁就會回到最前面開啟的，要三個畫面以上才比較明顯看出。 
  - 按下back會把當前的activity結束掉，並且會觸發oncreate，但若下了SingleTop，就不需要。
- 需要開啟子頁面輸入東西並回傳結果，結果一樣要用intent來存，然後回傳，可以用StartActivityForResult,第二個參數是識別哪裡觸發的,也就是RequestCode（主畫面需要複寫onactivityresult）

{%gist dearsherlock/74410c731bf83a5e5f22%}

#### Fragment
- Fragment會需要使用到 FragmentManager，且需要begintransaction,指定要取代哪一塊。
- 建立view也不一樣。
 {%gist dearsherlock/2918fff4b310a9b5a0db%}
 `FragmentManager.BeginTransaction().Replace(Resource.Id.frameLayout, new FirstFragment() { Value = "我是參數" }).Commit();`
 
               
#### 呼叫WebService
- 通常若一個thread需要等10秒以上，可能就會被android提醒是否要關閉，也就是uithread不要執行太久或是用非同步處理。使用微軟的EAP非同步框架。
- 如果需要一個等一個，太久了就用TAP框架，asyc/await
- 再以前，可以用下面寫

Thread t=new Thread(new ThreadStart(()=>
{
	Thead.Spleep(3000);
	//以下需要交還給UI,不然不會更新
	this.RunOnUiThread(()=>this.text="xxx"; )
}
));

後來c#用了Task
所以改寫成
Task.Run(
()=> {
Thread.Sleep(3000);
	this.RunOnUiThread(()=>this.text="xxx"; 
});


後來改成async/await，await需要接在有回傳Task的method。且因為await會等待做完，所以更改ui的指令就可以放在await後面。

舊版的只有給xxxAsync和xxxComplete讓你做非同步的事情，新版的才有回傳TaskAsync版本的method回傳

但你也可以去包裝這種async/complete的事件讓程式更簡單：
ex:TaskCompleteSource,就可以用await,async去呼叫

ios啟動若太久會直接關閉。

Thread.sleep(3000)-->Task.Delay(3000)

#### Android 的滑動行為判斷
需要由touchdown->move->touchup去判斷

#### ListView
可以用ArrayAdapter，裝載資料。把Activity傳進去，把每個itemlayout是哪個傳進去(有內建了幾個如SimpleListItem1...)，把資料傳進去就可了

而view的記憶體，只會存在目前看到的，不然記憶體都不夠。已經滑出範圍的view會丟到回收區域，再出現的會被以getview問是否有回收的view來使用。getview裡要判斷是否有view建立，若有看看是否被回收可被使用，
![image](https://farm6.staticflickr.com/5449/17442230170_b8d8d6c948_o.png)

若要更新listview中的資料，應該是要改資料(adapter)，然後再呼叫notifydatasetchange

#### Sqlite
可以下載rootbrowser來看資料。
superuser app要設定自動回應=true

#### 推播
- 推到google的GCM(Google Cloud Messaging)上，有一些時間和容量限制。
- Client註冊regId,目前大概都是200多，不會太長。

- 手機會裝GSF（google service framework）會以此來接收GCM的訊息，然後會傳送給app intent。

- 註冊GCM：有google帳號，進入api console 
- 流程：app啟用後會拿專案號碼去跟GCM要一組註冊碼，然後會直接傳給要推送的Server存起來。Server要推送時把註冊碼清單丟給GCM，GCM進行推播。
- ![image](https://farm8.staticflickr.com/7659/17445911989_5d8a72f42d_o.png)

####部署
要用有signed的apk。
linker ：若是debug則是none，release是最佳化，sdk and user assemblies,沒有用到的屬性就會沒有編譯，但是若是程式用reflection呼叫的就會漏掉，就會error。sdk assembly-->只針對.net的。


上架要輸入憑證，
模擬器沒有辦法部署apk-sign
可以選擇要發行到x86等


mobizen ：可以投影手機的畫面


Question:  
1.最新版更新了什麼導致編譯不過？  
2.有沒有control上是有swipe功能
需要自己寫touch事件，依照x軸或y軸移動來判斷
3.沒有簽名的？
4.user feature? 
其實不會擋著使用者不能下載，但若要設定，直接設定在androidmenifest.xml也可以，不會被覆蓋
5.Android有crash report? 
也有。