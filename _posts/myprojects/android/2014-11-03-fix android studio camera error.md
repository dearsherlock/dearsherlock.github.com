---
layout: post
category : Android 
tagline: "Android開發疑難雜症"
tags : [Android Develop,Android Studio,Camera]
title: "Android Studio 執行時發生取用相機錯誤"

---

### 錯誤情形

Build會正常通過，但是執行的時候會出現錯誤。

{%gist dearsherlock/55f187ed99e5ccf7983c%}

### 錯誤排除

請在AndroidManifest.xml 設定正確的權限資料：

{%gist dearsherlock/52da144ae12b44966b75%}