---
layout: post
category : Xamarin
tagline: "Xamarin Layout"
tags : [Xamarin,Layout]
title: "Xamarin Layout"

---

### Xamarin Layout
![image](https://farm8.staticflickr.com/7602/16798010870_878dece426_o.png)

![image](https://farm9.staticflickr.com/8694/16797749958_fb7eeb7dfc_o.png)

![image](https://farm8.staticflickr.com/7625/16984199472_4a15bfb7bc_o.png)

### Feature tour （ViewPager@Android）
可以進行功能的導覽。
[網路上有教學](https://www.youtube.com/watch?v=EBmBKivPVX4)如何使用xamarin來開發viewpager

若是要加上頁面指標，這裡會是你想要的。

![image](https://farm9.staticflickr.com/8726/16985130571_406f53d240_o.png)

https://developer.xamarin.com/samples/monodroid/ViewPagerIndicator/

[程式碼下載](https://github.com/xamarin/monodroid-samples/tree/master/ViewPagerIndicator)

需要Nuget套件  
![image](https://farm9.staticflickr.com/8702/16798398328_c854282740_o.png)

此範例也提供了好幾種：
Snap
![image](https://farm8.staticflickr.com/7593/16365994243_f45a64b04a_o.png)

含Theme
![image](https://farm8.staticflickr.com/7596/16363723044_bec1dcbdff_o.png)

含Listener(換頁會通知)
![image](https://farm8.staticflickr.com/7629/16366003713_4f1a0a8446_o.png)


### 有換頁效果的tabcontrol
https://github.com/jamesmontemagno/PagerSlidingTabStrip-for-Xamarin.Android

### framework測試結果
若是有用到appcompat，需要用20.0.2搭配著會是android.support.v4 20.0.4版，若用了21以上會有錯誤。


### 圖片版面

http://juliaailse.iteye.com/blog/1409317

imageView.SetScaleType(ImageView.ScaleType.FitXy);會上下左右延伸變形
imageView.SetScaleType(ImageView.ScaleType.FitCenter);也是延伸，但是會碰到就停。

Center/CenterInside:顯示原圖，不會延伸。
Matrix:顯示原圖，且從左上角開始畫。

FitXy Sample1
![image](https://farm8.staticflickr.com/7616/16997291041_710bdffa7c_o.png)

FitXy Sample2
![image](https://farm9.staticflickr.com/8748/16998179355_6db57712b0_o.png)

FitCenter Sample1
![image](https://farm9.staticflickr.com/8726/16972221736_59a212540f_o.png)

FitCenter Sample2
![image](https://farm9.staticflickr.com/8748/16996786492_e27949f403_o.png)

CenterCrop Sample1
![image](https://farm9.staticflickr.com/8685/16810718580_865eba90d7_o.png)

CenterCrop Sample2
![image](https://farm8.staticflickr.com/7602/16996792032_bcdb0a3a2b_o.png)



