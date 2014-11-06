---
layout: post
category : Star Printer 
tagline: "Android連接Star印製"
tags : [Android Develop,教學文章,QRCode,Android Studio]
title: "Android 連接印表機產生QRCode"

---
###Star機器的預設密碼
關閉電源，然後按下feed按鈕，然後開機，就會印出IP。
然後登入該IP，帳號是root，密碼預設是public。


###在Line列印模式下，含中文QRCode的產生程式(byte[]內容)
中文解碼都一樣，byte[62]=
[104,116,116,112,58,47,47,119,119,119,46,115,116,97,114,45,109,46,106,112,47,101,110,103,47,-28,-72,-83,-26,-106,-121,-25,-74,-78,-27,-99,-128,-17,-68,-115,-24,-85,-117,-24,-89,-93,-26,-98,-112,-17,-67,-98,105,110,100,101,120,46,104,116,109,108]


[104,116,116,112,58,47,47,119,119,119,46,115,116,97,114,45,109,46,106,112,47,101,110,103,47,-28,-72,-83,-26,-106,-121,-25,-74,-78,-27,-99,-128,-17,-68,-115,-24,-85,-117,-24,-89,-93,-26,-98,-112,-17,-67,-98,105,110,100,101,120,46,104,116,109,108]

印製qrcode 成功的
	byte[]需要加上以下這些：
	{ 0x1b, 0x1d, 0x79, 0x53, 0x30, 0x00 }  //modelCommand byte[]
			//case Model2:
			modelCommand[5] = 2;
	{ 0x1b, 0x1d, 0x79, 0x53, 0x31, 0x00 } //correctionLevelCommand byte[]
			//case High:
			correctionLevelCommand[5] = 3;
    { 0x1b, 0x1d, 0x79, 0x53, 0x32, cellSize }
	{ 0x1b, 0x1d, 0x79, 0x44, 0x31, 0x00, (byte) (barCodeData.length % 256), (byte) (barCodeData.length / 256) }
	{資料的部份}
	{ 0x1b, 0x1d, 0x79, 0x50 }
	
	
	portname=TCP:192.168.11.101
	portsetting=""
	
程式碼如下：
{%gist dearsherlock/99943ebd4fc721762471%}
	
###Line/Raster模式的差別	
兩者皆可印中文字.
 
LINE 模式: 每次打印範圍以行計算, 即發出一行的打印內容和指令致打印機, 便立即使用打印機內建字庫印出一行, 處理時間較快速, 但打印效果較固定.
 
RASTER 模式: 每次打印範圍以一區段計算, 在計算機內轉換成圖象再發致打印機, 這樣的好處是打印內容/效果較多元化, 但處理時間較長, 不過任何文字皆可印.

### 資通對於QRcode的尺寸建議

目前建議size=4dots

### Line模式下使用內建的Logo

1.下載官網上的[Star Micronis Utility](http://www.starmicronics.com/support/download.aspx?type=1&tabText=StarPRNT%20V2.2%20Lite%20for%20Windows%2064-bit%20Systems&path=DriverFolder\drvr\starprnt_v2.2_setup_64bit.zip&id=471&referrer=http://www.starmicronics.com/support/)（目前是只有windows版）
2.下載你想要的Logo，我是覺得發票最上方的Logo應該是含文字的，可以讓客戶自己去設計，如中油發票如下，可以自行用比較漂亮的字型。
![image](https://farm4.staticflickr.com/3952/15721043615_758e71832a_o.jpg)

3.下載後開啟軟體，執行標誌儲存的功能，進行上傳。
![image](https://farm4.staticflickr.com/3954/15721059065_36281640d1_o.png)

![image](https://farm4.staticflickr.com/3938/15101102854_2a822caa74_o.png)
4.控制碼如下：

{%gist dearsherlock/d8731e0ab43c2dfc62c2%}



 
	