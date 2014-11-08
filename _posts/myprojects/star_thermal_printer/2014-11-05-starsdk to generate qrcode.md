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

5.以上LOGO為圖檔說法已與原廠確認過。

＊參考[StarLine指令集文件](https://drive.google.com/file/d/0B62x5TTVLcQ0NkxHaDVFbTItV1U/view?usp=sharing)

### Star印表機之語言指令集與列印模式的關係

Star有提供以下的指令集以及列印模式

|          |          | 指令集                                   | 指令集                               |
|----------|----------|------------------------------------------|--------------------------------------|
|          |          | StarLine                                 | ESC/POS                              |
| 列印模式 | LineMode | 官網上有範例                             | 官網上沒有範例                       |
| 列印模式 | PageMode | 官網上沒有範例，但可以印製一行兩個QRCode | IT有給C#範例，可以印製一行兩個QRCode |
 
	
###要印製電子發票(原廠說法)

有關 TSP650II 列印電子發票 “雙QRCode” 與 “19字元的39Barcode” ,建議將 TSP650II 調整為 “Esc/Pos” 模式:  
原因及調整方法說明如下:  
TSP650II 有2種指令語言(Emulation),分別是 StarLine 與 Esc/Pos 指令集,出廠預設定為 StarLine Emulation.  
在同一行中列印2個QR Code ,此兩種指令語言都是可以做到的,只要下指令進入 Page Mode後,再列印 QRCODE即可,  
 
但對電子發票列印而言,還有一個重點是在 50.8mm中要列印 19個字的 39碼(不包含起始與結束字元),  
如此時39碼的圖形 細/寬 比例必須是 1:2 點,才能列印完整.  
StarLine Emulation 的39碼最小比例為 2:4 在50.8mm中最多只能印 13個字元,  
 而 ESC/POS最小比例有提供 1:2 因此可以符合電子發票列印的需求.  
  如果客戶要使用 Command的方式列印電子發票,請使用 Esc/Pos Emulation.  
TSP650II Emulation 調整方法,是在機器底殼有一個約 2*4 cm的小鐵蓋,  
用螺絲起子打開後,會看到2組指撥開關,分別為 4Pin與8Pin,  
如下圖將 8Pin的指撥開關第 1,2 兩PIN調整至 OFF 切換為 Esc/Pos Emulation.  
![image](https://farm4.staticflickr.com/3949/15543581390_9edcee5843_o.jpg)

 
 附件為:  
1.       [Esc_POS_Command_Manual_Star_v20.pdf](https://drive.google.com/file/d/0B62x5TTVLcQ0LVF5MzFjVVZjb2s/view?usp=sharing):  為Star TSP650II  Esc/Pos 的程式手冊  
2.       [ESCPOS_QRCode_Command.pdf](https://drive.google.com/file/d/0B62x5TTVLcQ0UE9BblZCYlBTeXM/view?usp=sharing) : 為 Esc/Pos 的 QRCode 指另說明  
3.       [TSP650VerTRP 110927_QRCode_PageMode列印說明.pdf](https://drive.google.com/file/d/0B62x5TTVLcQ0ZGMybm1sRVRxNk0/view?usp=sharing):  
為TSP650有關 Esc/Pos 的Page Mode 列印 QRCode 與文字再同一列的說明  
它的說明同樣也適用於 雙QRCODE 在同一列,說明中指令的參考來源手冊為上述2個附件.  
***PS: 說明文件為 TSP-650,目前您的機型式 TSP650II 已經是內建 Esc/Pos 模式了***  
以上, 資料希望對您的開發上能有幫助.  
      PS: 1.Star 官網下載的 SDK 是使用 StarLine Mode 的 Emulation， 因此當您將 TSP650II DIPSWITCH 切換為 Esc/Pos  之後,SDK將無法正常列印輸出.  
      
      
以下連結為[Visual Studio c#的程式](https://drive.google.com/file/d/0B62x5TTVLcQ0VW5wSXAtbkRaQU0/view?usp=sharing)(ESC/POS 指令集，可印製一行兩個QRCode，解壓縮密碼:d12345)  
[C#程式文件讀我檔](https://drive.google.com/file/d/0B62x5TTVLcQ0T2U3OXdjaXRUZzA/view?usp=sharing)