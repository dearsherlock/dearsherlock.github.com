---
layout: post
tagline: "螢幕解析度"
categories : [Retina,Monitor,Pixel Density]
title: "計算需要視網膜解析度的螢幕所需解析度"

---

###參考
[http://0123456789.tw/?p=3156](http://0123456789.tw/?p=3156)

http://zpz57.pixnet.net/blog/post/87279340#article-area



所以如果距離為 12 inches (約 30 cm), 則
當視力為 1.0 時, 分辨視角為 1.0
    1 / (12 * tan(1/60)) = 286 ppi

當視力為 1.2 時, 分辨視角為 0.79
    1 / (12 * tan(0.79/60)) = 362 ppi
    
### 自己做了一個Google 計算表

https://docs.google.com/spreadsheets/d/1VnmAoaTGtlKc0rWHAr9rof8ZxyKIIfZ2cct0r24j0nU/edit?pli=1#gid=0

| 視力 | 分辨視角 | 距離(吋) | 距離(公分) | 所需的視網膜解析度 |
|------|----------|----------|------------|--------------------|
| 0.4  | 2.5      | 12       | 30.48      | 115                |
| 0.5  | 2        | 12       | 30.48      | 143                |
| 0.6  | 1.67     | 12       | 30.48      | 172                |
| 0.7  | 1.43     | 12       | 30.48      | 200                |
| 1    | 1        | 12       | 30.48      | 286                |
| 1.2  | 0.79     | 12       | 30.48      | 363                |
| 1.5  | 0.63     | 12       | 30.48      | 455                |
| 2    | 0.5      | 12       | 30.48      | 573                |