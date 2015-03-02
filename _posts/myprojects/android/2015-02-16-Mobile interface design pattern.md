
## Navigation

### Primary Navigation on Persostence Mode
Persistence表示是固定的，一打開就看的到的。
共有Springboard、Cards、List Menu、Dashboard、Gallery、TabMenu、Skeuomorphic

#### Springboard
缺點就是感覺每個項目的重要性一致，要自己看圖示才知道。通常會搭配頁面顯示換頁（下方小點）
![image](https://farm8.staticflickr.com/7457/15926086034_17e8ba47d4_o.png)

iOS、Android、Windows Phone都還在用
![image](https://farm8.staticflickr.com/7329/16361208830_5c5f50373a_o.png)

微軟的動態磚則比較動態大小，也可以在panorama中設定是動態或固定的。

#### Cards
理論上會有堆疊、滑動、翻面的特效，通常拿來做選項項目的動作抉擇(要/不要，會/不會)
![image](https://farm9.staticflickr.com/8597/15926180374_478579098a_o.png)

#### List Menu
也是每個項目都是特定功能，若這些項目點下去還有項目的階層，在ios上稱為hierarchical navigation  
![image](https://farm8.staticflickr.com/7398/16522834196_c837e96f26_o.png)

#### Dashboard
呈現圖像資料時，每個資料都是一個子進入點，進入後若要返回，會跟hierarchical navigation 類似。
![image](https://farm8.staticflickr.com/7420/16363033477_e48cfc93fb_o.png)

#### Gallery
用上下/左右滑動格狀版型來呈現動態內容，而這些在同時滑動的內容的階層是一致性的。
![image](https://farm8.staticflickr.com/7328/16547544151_c796ef6aa3_o.png)

#### TabMenu
以下是facebook從SideDrawer改成TabMenu的過程
![image](https://farm8.staticflickr.com/7410/16363161379_96c51dcc2c_o.png)
要注意的是TabBar和ToolBar的不同，Toolbar是某個主要功能下的動作或工具。


Android Tab Menu Fixed Tabs Mode
Android建議以下幾種情形使用頁籤：
1.常常切換畫面
2.最多有三個主要功能
3.希望使用者容易看到其他功能
![image](https://farm9.staticflickr.com/8677/15927035894_c0d0bf84ee_o.png)


Android Tab Menu Fixed Spinner Mode
Android 建議以下幾種情形使用：
1.還是想用到垂直顯示
2.下拉的資料中都是同一類型或格式型態
![image](https://farm8.staticflickr.com/7430/16363745407_4e0a5edf7c_o.png)


Android Tab Menu Fixed Navigation Drawers Mode
Android 建議以下幾種情形使用：
1.還是想用到垂直顯示
2.有很多第一層的煮功能需要顯示
3.可以隨時切換到主功能（很深的目錄）

下面的右圖是示範Navigation Drawers 可以切換主功能
![image](https://farm8.staticflickr.com/7449/16363382229_2c2dc8026f_o.png)


#### Retracting Tab
在往下瀏覽內容時會收起Toolbar，往上又會重新出現
![image](https://farm8.staticflickr.com/7324/15927239254_fc7118ba48_o.png)

#### Configurable Tabs
可以像Chrome頁籤一樣自己新增，太多也沒辦法完全顯示，需要自行去拖拉重要功能
![image](https://farm9.staticflickr.com/8673/16548154991_f8b7a63ceb_o.png)

#### SideBars
很受歡迎，但是在行動裝置上，需要額外顯示文字才能不用變成Mystery meat的例子，而因為空間小，所以在行動裝置上是算少用
![image](https://farm8.staticflickr.com/7284/15927283654_43febddb7b_o.png)

#### Skeuomorphic
使用擬真圖片或動作來完成功能。
![image](https://farm9.staticflickr.com/8619/16362214688_751e2f2b1d_o.png)

### Primary Navagation on Transient Mode
Transient表示是變化的，會隨著使用者點選而改變的。
共有Side Drawer、Toggle Menu、Pie Menu

#### Side Drawer
有兩種模式：Overlay、Inlay。前者展開後會在上方做遮罩，後者會推開旁邊的內容。
以下為Overlay範例
![image](https://farm8.staticflickr.com/7381/16559252405_67c3a1d86b_o.png)
以下為Inlay範例 
![image](https://farm8.staticflickr.com/7348/15939067683_8fb8cb57f5_o.png)

### Secondary Navigation
共有Page Swiping、Scrolling Tabs




###參考資料
[Google 官方對於Navigation的建議](http://developer.android.com/intl/zh-tw/design/patterns/app-structure.html)