---
layout: post
category : Azure 
tagline: "Azure Devops: Visual Studio Online"
tags : [Azure,Devops]
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
