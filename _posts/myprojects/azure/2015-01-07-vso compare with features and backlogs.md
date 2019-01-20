---
layout: post
tagline: "Azure Devops: Visual Studio Online"
categories : [Azure,Devops]
title: "Azure DevOps 設定初始篇：Features V.S. Backlogs"

---
###Features 和 Backlogs的差別
基本上這是來自於SCRUM工作範本，兩種差別在於視野的顆粒度。

Features和Backlogs 的個別使用時機可以在這篇看到，聽說在SCRUM上是滿好用。
http://www.nsilverbullet.net/2013/06/04/features-help-us-plan-work-better-in-team-foundation-service-scrum-process/

整理一下內文：
  
|          | Features                                                                                                                  | Backlogs                                                                   |
|----------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| 使用情境 | 通常表示不能在一個Sprint中完成，會橫跨好幾個Sprint才能完成的功能。也就是若工作不能在一個Sprint中完成，就會是一個Feature。 | 通常會分為好幾個Sprint，在一個Sprint中完成的工作，會用來準確地規劃和預測。 |
| 組成內容 | 是由Backlog項目來組成，且有預期完成日期。                                                                                 | 由工作項目以及預估工時來組成                                               |

微軟後來也提供了說明：http://msdn.microsoft.com/en-us/library/dn306083.aspx

vso的使用，其實是對應到建立portfolio章節  
http://www.visualstudio.com/get-started/create-your-backlog-vs#article11


### Visual Studio Online上的建立
還滿直覺的，就是這樣子建立就好

![image](https://farm8.staticflickr.com/7554/16033742338_9f3619a611_o.png)


### Product Backlog Item和Task的關係
Product Backlog Item一開始的Iteration會放在根目錄。若要在某個Sprint進行請搬移。
![image](https://farm8.staticflickr.com/7472/15604851674_c5b733af9d_o.png)

以下是Product Backlog Item的畫面，可以看到已經可以預估一些工時，指派人和狀態，接下來可以更細化
![image](https://farm8.staticflickr.com/7569/15604709584_9cd84bb080_o.png)

Product Backlog Item可以藉由設定Link來產生Task或是關連。
建立關連中：
![image](https://farm9.staticflickr.com/8577/16227240985_1240c37826_o.png)
建立好關連：
![image](https://farm8.staticflickr.com/7533/16039873950_72e6647523_o.png)

Task的資料畫面
![image](https://farm9.staticflickr.com/8625/16041126809_3a841aaefd_o.png)

在查詢畫面中，你可以選擇Unfinished Work來看這之間的Tree狀關係。
![image](https://farm8.staticflickr.com/7492/16039910870_fe90a9965f_o.png)


###Excel編輯工作項目注意
用Excel Windows版本會有個Team的葉籤，可以進行大批編輯比較方便。但要注意，新增的Task的Iteration Path會預設在根目錄(此欄位預設隱藏，要叫出來編輯)，請調整到你想要的。

![image](https://farm8.staticflickr.com/7566/15604923334_970c5ab4fd_o.png)


###個人推薦的Excel編輯欄位

| ID | Title 1                              | Title 2               | Activity     | Iteration Path      | Backlog Priority | Assigned To       | State | Remaining Work | Blocked | Work Item Type       |
|----|--------------------------------------|-----------------------|--------------|---------------------|------------------|-------------------|-------|----------------|---------|----------------------|
| 6  | 帳號：註冊功能                       |                       |              | \Release 1\Sprint 1 | 999905135        |                   | New   |                |         | Product Backlog Item |
| 58 |                                      | 需求分析              | Requirements | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 59 |                                      | Information Model設計 | Design       | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 60 |                                      | App前端開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 61 |                                      | 後端服務開發          | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 62 |                                      | Web功能開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 63 |                                      | 測試                  | Testing      | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 4  | 帳號：忘記密碼處理、多次輸入錯誤鎖定 |                       |              | \Release 1\Sprint 1 | 999968378        |                   | New   |                |         | Product Backlog Item |
| 64 |                                      | 需求分析              | Requirements | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 65 |                                      | Information Model設計 | Design       | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 0.5            |         | Task                 |
| 66 |                                      | App前端開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 67 |                                      | 後端服務開發          | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 0.5            |         | Task                 |
| 68 |                                      | Web功能開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 69 |                                      | 測試                  | Testing      | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 2  | 帳號：登入/登出功能                  |                       |              | \Release 1\Sprint 1 | 1000000000       |                   | New   |                |         | Product Backlog Item |
| 70 |                                      | 需求分析              | Requirements | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 71 |                                      | Information Model設計 | Design       | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 0.5            |         | Task                 |
| 72 |                                      | App前端開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 73 |                                      | 後端服務開發          | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 0.5            |         | Task                 |
| 74 |                                      | Web功能開發           | Deployment   | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
| 75 |                                      | 測試                  | Testing      | \Release 1\Sprint 1 |                  | Sherlock Sherlock | To Do | 1              |         | Task                 |
|    |                                      |                       |              |                     |                  |                   |       |                |         |                      |