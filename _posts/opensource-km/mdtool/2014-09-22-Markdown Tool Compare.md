---
layout: post
category : markdown 
tagline: "於Mac中使用Mou與Ulyssess"
tags : [Mac,Markdown,Mou,Ulysses]
title: "Markdown工具使用心得"

---
{% include JB/setup %}
## Markdown介紹
Markdown檔案格式近年來引起開發人員在撰寫文件上的注意，可能也是因為風格簡單、排版容易、可套css，不用類似寫網頁這樣，只要專心的寫文章就好。所以引起流行。當然網路上你也可以找到很多Markdown的入門介紹，在此就不多說。可見推薦參考網站。

## 工具使用心得
因為我是使用Jekyll網頁引擎來架設，所以一開始也不懂，就以為md檔是否有特殊規範，是否要配合Jekyll來撰寫。後來才知道不需要，撰寫者就自己專心的寫內容，可以用Jekyll引擎來預覽（使用`rake preview`指令），就可以看到編寫出來的網頁。不過當然是有部分要follow jekyll的規範啦，但也不多。幾點如下：
- 新文章檔名要用*西元年-月-日-抬頭.md*檔來命名
- md檔案內容一開始會有一塊設定，可以設定標籤、分類、副標題等等

依照這些就可以開始編寫了。當然你也可以用ultraedit，只是沒有預覽功能。
使用過的工具如下：
- 網頁版 StackEdit
- Ulysses III 1.2.2
- Mou 0.8.5

以下就是幾點使用心得，目前是Mou建立新檔案以及基底內容，然後用Ulysses來完成後續。

### 網頁版 StackEdit
有出chrome版外掛，介面乾淨、前後預覽，也可以同步Dropbox、Google Drive。但就是超級容易掛掉。也許是同步的問題＠＠

![][image-1]

### Mou 0.8.5
適合一開始建立md檔時使用，如下圖。

![][image-2]

乾淨，也有前後預覽。沒有很特殊的功能，純粹就是乾淨介面。但不知道為啥，這版超容易卡死，會連預覽伺服器都卡住不能更新、Git也看不到更新內容。優點就只剩下免費、有時預覽語法會比較正常(如圖片)。
全介面如下圖。

![][image-3]

### Ulysses III 1.2.2
功能聽說強大，反正就安裝看看。一開始對於他的格式支援很奇怪，好像不是很完整正常的md語法，後來把正確的md語法拿來顯示，確實又是沒錯的。所以應該是這個app所支援的語法太多元，導致編輯時要注意很多不該出現的語法不要亂加上去了。缺點就是有圖片的文章會看不到圖片（啟動預覽功能），這點比較麻煩。目前是直接使用jekyll的內建預覽功能來檢查看有沒有錯誤。但是Ulysses這App確實是可以一直打字的很舒服。

![][image-4]


## 推薦參考網站
- [中文Markdown語法介紹：http://markdown.tw/][1]

[1]:	http://markdown.tw/

[image-1]:	https://farm4.staticflickr.com/3886/15298661876_f872f38bbe_o.png
[image-2]:	https://farm6.staticflickr.com/5581/15134977178_e858f1aae5_o.png%0A
[image-3]:	https://farm4.staticflickr.com/3848/15321505285_f1275e1250_o.png
[image-4]:	https://farm6.staticflickr.com/5561/15134928628_c6f5314d2a_o.png