---
layout: post
category : mac 
tagline: "Jekyll Mac環境設定"
tags : [Jekyll於Mac環境設定]
title: "Jekyll系列"

---
{% include JB/setup %}

## Jekyll初認識

一個夜晚和同伴們閒聊，就開始了對於OpenSource專案的KM之旅。而要開始OpenSource之旅，勢必要在過程中做些KM[^1]。

研究了一下網路上對於這些OpenSource使用上的網友心路歷程，似乎都一致性的覺得在Windows上的環境設定就會搞死人。所以就乾脆在Mac上寫文章吧。

而要寫HTML或是在Onenote上寫或是寫Markdown文件呢？基於既然都要Open，就Open到底吧～就用Markdown來寫。（我本身是還有另外買Sharepoint Online，現在看來也應該是該關閉了～Github做了太多相同且免費的事情了）

而GitHub很容易被fork然後就Clone文章的事情就算了，基本上有網友肯來瀏覽就很不錯了。寫程式本來就是為了讓世界更美好！取之於網路，用之於網路ㄚ～

所以研究完jekyll，當然還有Markdown工具的介紹囉。另篇來介紹。


---- 

## 為啥要用Jekyll
為啥要用Jekyll？其實不使用Jekyll也可以寫文章、做KMㄚ～如[Java SE 6 技術手冊][1]，就是純粹使用md檔來寫文章，然後使用GitHub Pages[^2]來產生網頁。

Jekyll其實只是一種本地端的網頁引擎，可以把一些文章重新轉換成HTML相容的頁面，或是把一些需要重新彙整、索引的功能（以往需要依賴網頁服務器的外掛程式提供）在本地環境端處理完，且需要發布的部落格文章、技術文章可以預覽，然後使用Github指令發布到Github或使用其他工具發布到各式各樣的部落格上。

如此可以保留給技術文章寫作者的極大彈性，以及有一些範本可使用，且讓你的文章是能有整理功能的。優點如下：

1. 可tag
2. 可分目錄
3. 可有一些共用範本功能
4. 有一些環境變數可以使用

目前發現的缺點：
1. 換行需要多空一行(依據編輯器不同會有不同的呈現，如Ulysses就需要多空一行)
---- 
## 於Mac上的環境設定
### 安裝XCode命令列開發工具
先確定有安裝xcode-select命令列開發工具，若執行以下指令可以進行軟體更新或安裝。

`$ xcode-select --install `

或是如圖

![設定][image-1]

### 檢查是否安裝XCode所需工具

檢查是否安裝完xcode的完整工具

`$ xcode-select -p`

假如看到以下就表示好了

/Applications/Xcode.app/Contents/Developer

### -檢查gcc版本：

`$ gcc --version`

如果看到以下就表示ok

`Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1  
Apple LLVM version 5.0 (clang-500.2.79) (based on LLVM 3.3svn)  
Target: x86_64-apple-darwin13.0.0  
Thread model: posix`


[^1]:	Knowledge Transfer

[^2]:	Github Pages是Github上一個網頁服務，大多的使用者拿來寫Blog用。

[1]:	https://github.com/JustinSDK/JavaSE6Tutorial "Java SE 6 技術手冊"

[image-1]:	https://farm4.staticflickr.com/3925/15274772466_2b253ac553_o.png "setting"