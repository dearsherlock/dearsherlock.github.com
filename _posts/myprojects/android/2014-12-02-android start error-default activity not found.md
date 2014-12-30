---
layout: post
category : Android 
tagline: "problem solve"
tags : [Android ,default activity]
title: "Android problem:default activity not found"

---
### Android 發生錯誤找不到預設的Activity (default activity not found)

![image](https://farm8.staticflickr.com/7558/15307636594_1e9cac20dd_o.png)

###解決方法

請至mainfest檔案中在主要啟動activity設定以下
![image](https://farm8.staticflickr.com/7574/15742447828_df644819bc_o.png)
主要是設定這個：
{%gist dearsherlock/380175055b800a83450a%}

全部的範例如下：
{%gist dearsherlock/44457dec13115af11cb2%}