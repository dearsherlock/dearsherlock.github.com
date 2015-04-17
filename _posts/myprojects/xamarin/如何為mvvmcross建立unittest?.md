

### 如何為mvvmcross建立unittest?

1.新增一個Class Lib型態的Project，建議是.net4.5

2.然後引用你要測試的core lib project

3.Nuget加上Nunit 2.6.4,Moq4.1.1308.2321(更新版的版本會裝不上去＠＠)

4.裝上NunitTestAdapter2.0，安裝之後開啟Test Explorer，然後執行Discover ，他會開始掃描，之後就可以了。
畫面如下  
![image](https://farm8.staticflickr.com/7709/17119763511_71fcffa76f_o.png)

Log如下。  
{%gist dearsherlock/a4c4e16284bb06cdabb3%}


5.NUGet裝上MVVMCross.Hottuna.Tests 3.5

6.以下是簡單的TestCase，就依照Arange(設定變數或物件),Act（設條件）,Assert(執行適當的判斷)來執行。  
{%gist dearsherlock/2acd16b8c97a63b26719%}