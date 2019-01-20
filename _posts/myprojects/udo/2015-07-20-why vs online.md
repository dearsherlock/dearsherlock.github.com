---
layout: post
tagline: "Why VS Online"
categories : [Visual Studio online,]
title: "使用Visual Studio Online"

---



### 為何要用VS Online
因為有專人維護，換版，更新，比自己架設更穩定。

### Visual Studio Online 使用概述
[VS Online教室](http://blogs.msdn.com/b/ericsk/archive/2014/01/10/using-visual-studio-online-as-your-private-git-repository-for-free.aspx)

[董大偉老師介紹專案管理使用VSONLINE](http://www.microsoftvirtualacademy.com/training-courses/visual-studio-online-azure-software-management-case-study)  

[Slider在這裡](https://prezi.com/5n_zvejt2vau/ms-alm-day-2014-public/?utm_campaign=share&utm_medium=copy)

Visual Studio Online 是一個 Web-based 的服務，它可以幫助你將程式碼做版本控管（目前支援 Team Foundation 及 Git 版本控制）、Issue Tracking、ALM、自動建置測試等等的功能，如果只使用版本控制、issue tracking等基本的功能（也就是 Visual Studio Online Basic 涵蓋的範圍），而且使用帳號只有 5 人以下，則可以完全免費，非常適合個人或小團隊開發程式時應用。

#### VS Online 的主要功能

1.工作管理
	類似有些公司或專案使用redmine，但因為VS Online已經完整結合，所以不需要額外學習或安裝環境。
	可以使用Agile/CMMI/Scrum專案樣板，不同樣板會填不同詳細度的資料，一般會選用Agile或是Scrum就夠用了。
	
2.程式碼管理
	你可以把程式碼想像成各種文件、設計圖檔、mockup，都可以納入版本管控，而和傳統SVN不一樣的是支援了GIT方式，所以可以在你本地端進行本地端暫時的commit/rollback，等到你想要同步到主機，按下Sync就可以了。
	
3.Team Room
 可以就議題來進行討論，類似討論區。
 	


#### VS Online的帳戶概念

Visual Studio Online 會以 http://帳號.visualstudio.com 作為帳戶名稱，一個 Microsoft 帳號可以建立多個 VSO 帳戶，方便用來區別用途。而一個 Visual Studio Online 帳戶，也可以建立多個專案。

例如我建立了兩個，一個chtott的帳戶用來管理ott專案（可以管理多個專案），例外一個可能是udo本部要做來其他用途的。

![image](https://farm1.staticflickr.com/344/19841531542_c3c2b58945_o.png)

#### VS Online的工作管理概念

VS Online支援讓您可以依照Epics->Features-> Backlog item來細化工作，有關於官方介紹可在[下面連結](http://blogs.msdn.com/b/visualstudioalm/archive/2015/05/15/scaled-agile-framework-visual-studio-online-process-template-updates.aspx)找到。或是[這裡](https://msdn.microsoft.com/en-us/Library/vs/alm/Work/backlogs/organize-backlog)可以知道如何組織化。

![image](https://farm1.staticflickr.com/312/19227355144_ef3d797d1f_o.png)

#### 職責

Product Owner會負責訂定Iteration要產出的項目
	(Area是一種群組的分別，讓不同組看到不同工作內容避免混淆)
Product Owner和Stakeholders會訂定Features，有點像以前的SA
Product Owner和Scrum Master會訂定Backlogs

#### 工作管理
Features(功能)/Backlogs（待處理項目）/ Task（工作項目）
ex:Word的匯出功能/需要具體改哪些/細部工作

工作單的狀態（不同工作單會有不同狀態，沒有強制，但以下為慣例）：
New為新建立、Approved為確定要開始做、Committed為做完、Done為PO審核過
![image](https://farm1.staticflickr.com/472/19844085352_509a35ab31_o.png)

建立feature單要注意的事情
![image](https://farm1.staticflickr.com/259/19825350656_c5fd3dfea9_o.png)

Features的範例
![image](https://farm1.staticflickr.com/382/19844273052_d236f62950_o.png)

接下來就是決定backlogs的先後順序
backlog的寫法：需要輸入使用者是誰、需要做什麼、為什麼要這麼做？
這樣的寫法需要訓練過，因為兩週就要有產出demo，所以必須要定義清楚驗收條件。
ex:我是系統管理員，需要維護使用者的功能，因為可以建立新用戶。

建立feature和backlog的關聯
![image](https://farm1.staticflickr.com/277/19229172854_6b75281958_o.png)

接下來就是建立backlog的工作
然後就是backlog拉到某個sprint
然後指派人員執行
![image](https://farm1.staticflickr.com/381/19663851968_9252b76a4a_o.png)

Scrum master在完成任務後，就可以貼拉board上的任務進行狀態修改
![image](https://farm1.staticflickr.com/259/19663901440_f5486a03d5_o.png)

以上這些不見得會讓工時縮短，但透明度會變高

#### Daily Metting
及早曝險。
每天花15min討論以下，也可以用討論室進行
	- 昨天做了什麼
	- 今天預備做什麼
	- 遇到什麼問題？（可以用VS online內建的討論室討論）
	
	
![image](https://farm1.staticflickr.com/468/19664121868_c70dda83d1_o.png)

#### Request Feeback
若需要遠端stackholder的回應，測試結果可以進行回應。（對方也要有ms帳號，會收到email）
![image](https://farm4.staticflickr.com/3723/19664199470_de0807172d_o.png)

收到的email

![image](https://farm1.staticflickr.com/441/19852237235_aef9dd8283_o.png)

可以給回應和評價
![image](https://farm4.staticflickr.com/3666/19664206468_432a8807ef_o.png)

#### Product Backlog和Feature的差異

 - Product Backlog Items 是由有預估時程的工作所組成。
 - Features 是由 Product Backlog Items所組成，且會有目標時程
 

#### StackHolder身分
可以看報表和狀態，適用於老闆或客戶。


#### 參考連結
[案例分享 - 如何善用Visual Studio Online 及Azure進行軟體開發管理](http://www.microsoftvirtualacademy.com/training-courses/visual-studio-online-azure-software-management-case-study)


#### 目前建立的專案連結


| 位置                                                                                                                                                                    | 用途說明                                             |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| [OTT帳戶首頁入口](https://chtott.visualstudio.com/)                                                                                                                     | 用來管理不同專案，以後可能會開不同用途的專案。       |
| [中華影視TV App專案入口](https://chtott.visualstudio.com/DefaultCollection/%E4%B8%AD%E8%8F%AF%E5%BD%B1%E8%A6%96TV%20App)                                                | 目前定位為TV版APP的專案管理                          |
| [工作管理](https://chtott.visualstudio.com/DefaultCollection/%E4%B8%AD%E8%8F%AF%E5%BD%B1%E8%A6%96TV%20App/_backlogs#level=Epics&_a=backlog)                             | 工作管理，從Epics->Features->Backlogs                |
| [討論區](https://chtott.visualstudio.com/_rooms)                                                                                                                        | 討論區入口                                           |
| [管理使用者](https://chtott.visualstudio.com/DefaultCollection/%E4%B8%AD%E8%8F%AF%E5%BD%B1%E8%A6%96TV%20App/%E4%B8%AD%E8%8F%AF%E5%BD%B1%E8%A6%96TV%20App%20Team/_admin) | 新增使用者(微軟帳號)                                 |
| [中華影視TV app專案程式碼控管](https://chtott.visualstudio.com/DefaultCollection/_git/%E4%B8%AD%E8%8F%AF%E5%BD%B1%E8%A6%96TV%20App)                                     | TV版文件管理                                         |
| [更改VSO替代密碼](https://chtott.visualstudio.com/_details/security/altcreds)                                                                                           | 修改您的VS Online密碼，是為了要讓github client存取用 |