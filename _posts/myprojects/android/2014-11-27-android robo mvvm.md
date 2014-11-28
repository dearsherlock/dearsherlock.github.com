
##RoboMVVM
###Presentation Model
1.View依賴於Presentation Model，Presentation沒有依賴於View。提供介面供綁定，具體解釋成什麼介面是在Binding的時候。

2.屬性綁定就是介面的狀態，

3.範例是一個CRUD的程式
下圖是各個畫面之間的關係
![image](https://farm9.staticflickr.com/8588/15268228253_9a9d02f1a5_o.png)

下面是新增Album情境，presentation model與view、control之間的關係
![image](https://farm8.staticflickr.com/7516/15894025321_c4ae69a9b6_o.png)

下面是更新、刪除情境，presentation model與view、control之間的關係
![image](https://farm8.staticflickr.com/7580/15708870340_1cd69f0c1c_o.png)

###View的Command綁訂
View上面的命令還是一樣的寫法
{%gist dearsherlock/a632d50c626fe16836eb%}
但是因為有指定Presentation Model，所以會被PresentationModel上來執行
如下
{%gist dearsherlock/4efc0dbbe35fd67d8360%}

而View上面有一些方法，是回應Presentation model處理主要邏輯(更新或刪除)
之後call back ui的使用者介面操作; 舉例來說，UI呼叫刪除Album(Presentation接收)後，呼叫view介面然後更新畫面，或是跳轉畫面(所以view interface上面定義的大多是頁面跳轉或更新)

如下是View所定義的method：
{%gist dearsherlock/442b024f8418c0df945c%}

###幾個annotation

#### @PresentationModel
用在Presentation Model的定義。

#### @DependsOnStateOf

通常用在方法的綁定，很像wpf/silverlight中的converter，會雙向binding

範例：以下有個欄位控制項中的enabled屬性綁定到另外一個屬性，因為若全部都要在presentationmodel開立屬性就太蠢了，所以有這種的設計(但其實wpf/silverlight連設定這樣的property都不用)

{%gist dearsherlock/b59ea5ac251c81319a99%}

在presentation中需要定義以下
@DependsOnStateOf(CLASSICAL)
    public boolean isComposerEnabled() {
        return isClassical();
    }
    
    
#### @ItemPresentationModel
通常用來指名listview的datasource，在presentation model中的用法如下：
{%gist dearsherlock/9be2089504bcb1416133%}

在view中的指定datasource方式如下：
{%gist dearsherlock/a37dbfe908c5cca77fdc%}
