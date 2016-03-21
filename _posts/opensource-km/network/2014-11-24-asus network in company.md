---
layout: post
category : Network 
tagline: "無線網路設定"
tags : [asus ,company network]
title: "asus wl-ge330 設定公司區域網路"

---
###設定

1.按下後面reset按鈕十秒，重新重置。
2.先確定區域網路是正常的
3.asusAP接上區域網路
4.預設應該是gateway模式，有需要更新密碼請進入192.169.1.220，密碼預設是admin/admin
5.設定你本地的機器ip為公司給予的IP、閘道。
6.這樣就可以了。不需切換成AP模式。


### 設定(如果要在公司用adsl接在小烏龜的hub上網)
先把網路線接在小烏龜和asus ap上
使用gateway模式
配置wan為靜態ip,192.168.1.7 ,lan設定成192.168.2.220 這樣就會ap用192.168.1.7來做上網,但是使用asus ap上網的就會是192.168.2.xx
管理仍然使用http://192.168.2.220/
