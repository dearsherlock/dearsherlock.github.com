---
layout: post
category : Android 
tagline: "root steps"
tags : [Android L,root]
title: "Android OS root"

---

###root Andorid L steps

1.先確認環境，可以使用adb工具：Mac會安裝在`/Applications/android\ sdk/platform-tools/`

2.到以下這個位置下載映像檔https://developers.google.com/android/nexus/images。我是下載2013wifi版
![image](https://farm8.staticflickr.com/7476/15902596616_291785a31d_o.png)

3.執行`/Applications/android\ sdk/platform-tools/adb reboot bootloader`

4.執行 `/Applications/android\ sdk/platform-tools/fastboot oem unlock`

5.到剛剛下載的檔案解開的目錄下，把檔案flash-all.sh打開編輯，把fastboot指令前面加上路徑。如下：

```
/Applications/android\ sdk/platform-tools/fastboot flash bootloader bootloader-flo-flo-04.04.img

/Applications/android\ sdk/platform-tools/fastboot reboot-bootloader

sleep 5

/Applications/android\ sdk/platform-tools/fastboot -w update image-razor-lrx21p.zip
```


6.執行flash-all

7.執行完後會重開機，這時你可以趕快進入fastboot模式，也就是按下電源和音量減少鍵，就會讓你進入fastboot，每一家的手機不一定一樣。

8.進入後執行`/Applications/android\ sdk/platform-tools/fastboot oem lock`

9.然後按下電源上下鍵，進行選擇重開機，就可以了。


###Reference 
下載映像檔
https://developers.google.com/android/nexus/images