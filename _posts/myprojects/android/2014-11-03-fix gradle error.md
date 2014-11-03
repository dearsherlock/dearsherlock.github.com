---
layout: post
category : Android 
tagline: "Android開發疑難雜症"
tags : [Android Develop,Android Studio,Gradle]
title: "Android Studio 執行行發生檔案重複...錯誤"

---
### 錯誤情形

Build會正常通過，但是執行(Deploy)的時候會出現錯誤。

{%gist dearsherlock/841004c451010f95c1d5%}

### 錯誤排除

看到網路上也有人這樣的情形，順手記錄一下。
請參見[網路文章](http://stackoverflow.com/questions/20673888/duplicate-files-copied-android-studio-0-4-0)，測試過是正常可用。

請打開app目錄下的build.gradle，加上以下的設定就可以了。好像是要排除一些檔案的檢查。Anyway,設定完是解決了。


{%gist dearsherlock/2af976811144a70c97fe%}


