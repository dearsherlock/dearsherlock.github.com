---
layout: post
category : MAC 
tagline: "環境變數"
tags : [java ,mac]
title: "MAC上設定java參數"

---

JAVA_HOME通常不會設定
可以用echo $JAVA_HOME來查看。

通常若有裝JDK，會裝在：/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home

系統內建的是
Macintosh HD ▸ 系統 ▸ 資源庫 ▸ Java ▸ JavaVirtualMachines ▸ 1.6.0.jdk ▸ Contents

若真的查不到，可以用下面這個指令來查看
Macintosh HD ▸ 系統 ▸ 資源庫 ▸ Frameworks ▸ JavaVM.framework ▸ Versions ▸ A ▸ Commands\JAVA_HOME

