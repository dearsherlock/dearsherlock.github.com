---
layout: post
category : Xamarin 
tagline: "跨平台開發"
tags : [Xamarin,Visual Studio 2015,Android,iOS,Shared Project]
title: "Xamarin MVVMCross使用於Visual Studio 2015"

---

### Project Target Profile

The easiest way to change the Profile is by manually editing the project file.

Right-click on your project and select "Unload Project"
Right-click and select "Edit [project name].csproj"
Find <TargetFrameworkProfile> tag and change it to <TargetFrameworkProfile>Profile158</TargetFrameworkProfile>
Save. Right-clic on your project and select "Reload Project"





### 建立MVVMCrosss專案
http://www.dotblogs.com.tw/toysboy21/archive/2014/05/21/145196.aspx

### 測試Ok的project profile以及nuget mvvmcross的版本

從上面去編輯project的targetframeworkprofile，以及從nuget的mvvmcross版本，MVVMCross 3.5.0 v.s. Project TargetFrameworkProfile＝78

請檢查.csproj的內容是否如下：
{%gist dearsherlock/7b59425af17a6217244d%}




#### MVVMcross 3.1.1
不合的有：4.5的.net framework ＋ profile 259  （PCL無法安裝MVVMCross）
合的有：4.5的.net framework ＋ profile 78，Android project可以成功build和執行


####MVVMCross 3.2.1
Android Project 是.net4 的不行。可以安裝但會有error list跑出但實際上是build ok
Android Project 是.net4.5 的不行。可以安裝但會有error list跑出但實際上是build ok
Android Project 是.net4.5.2 的不行。可以安裝但會有error list跑出但實際上是build ok
Android Project 是.net4.6 的不行。可以安裝但會有error list跑出但實際上是build ok



#### MVVMCROSS 3.5.0

Android Project 是.net4.6 的不行。可以安裝但會有error list跑出但實際上是build ok
PCL，4.5 .net framework+ profile 259 可以裝
