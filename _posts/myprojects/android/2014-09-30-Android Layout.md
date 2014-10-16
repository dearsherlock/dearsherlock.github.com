---
layout: post
category : Android 
tagline: "Android開發教學"
tags : [Android Develop,教學文章,Layout]
title: "Android 版面類型"

---

### 大致種類([下圖參考自][1])
![][image-1]  

### Linear Layout
- 垂直排版，可以知道物件若超過版面也不會自動換列。  

![][image-2]

- 水平排版

![][image-3]
- 可以設定比例
透過以下來設定 android:layout\_weight="比例"
([下圖參考自][2]) ![][image-4]

### RelativeLayout
- 可以設定物件相互之間的上下左右關係，需要指定”特定元件”的上下左右方，若沒有特別指定，則是置中，且允許元件疊在一起，只是很醜。

![][image-5]
- 以下為一些屬性可供設定

| 屬性                                | 說明                                                                                                                                                                            |
|---------------------------------- |--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   |
| android:id                        | 該屬性指定一個辨識符號給元件，並自動在R.java中建立索引，透過此id可用來調用元件.                                                                                                    |
| android:layout\_width              | 該屬性定義元件的寬度，可使用的屬性值有"fill\_parent"(填滿容器空間)、"wrap\_content"(根據內部內容延展至適當大小)、"match\_parent"(大致上功能與"fill\_parent"相同，2.2版本才可使用).     |
| android:layout\_height             | 該屬性定義元件的高度，可使用屬性值同上.                                                                                                                                            |
| android:text                      | 該屬性可設定文字顯示在元件上.                                                                                                                                                   |
| android:layout\_above              | 將此元件置於"指定元件"(使用元件id指定)上方.                                                                                                                                     |
| android:layout\_below              | 將此元件置於"指定元件"(使用元件id指定)下方.                                                                                                                                     |
| android:layout\_toLeftOf           | 將此元件置於"指定元件"(使用元件id指定)左方.                                                                                                                                     |
| android:layout\_toRightOf          | 將此元件置於"指定元件"(使用元件id指定)右方.                                                                                                                                     |
| android:layout\_alignParentTop     | 將此元件對齊於佈局畫面上邊線，屬性值為true、false.                                                                                                                                |
| android:layout\_alignParentRight   | 將此元件對齊於佈局畫面右邊線，屬性值為true、false.                                                                                                                                |
| android:layout\_alignParentLeft    | 將此元件對齊於佈局畫面左邊線，屬性值為true、false.                                                                                                                                |
| android:layout\_alignParentBottom  | 將此元件對齊於佈局畫面底線，屬性值為true、false.                                                                                                                                   |


- 以下為範例的Layout Source Code


\<RelativeLayout android:orientation="horizontal"
xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:tools="http://schemas.android.com/tools"
android:layout\_width="match\_parent"
android:layout\_height="match\_parent"
android:paddingLeft="@dimen/activity\_horizontal\_margin"
android:paddingRight="@dimen/activity\_horizontal\_margin"
android:paddingTop="@dimen/activity\_vertical\_margin"
android:paddingBottom="@dimen/activity\_vertical\_margin"
tools:context=".MyActivity"\>

\<TextView
android:text="@string/title"
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:background="@color/grey"
android:padding="@dimen/default\_padding"
android:textSize="@dimen/title\_txt\_size"
/\>
\<ImageButton
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/ImgBtn01"
android:layout\_above="@+id/Btn01"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn01"
android:text="Button01"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn02"
android:text="Button02"
android:layout\_below="@id/Btn01"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn03"
android:text="Button03"
android:layout\_toLeftOf="@id/Btn02"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn04"
android:text="Button04"
android:layout\_toRightOf="@id/Btn01"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn05"
android:text="Button05"
/\>
\<Button
android:layout\_width="wrap\_content"
android:layout\_height="wrap\_content"
android:layout\_centerInParent="true"
android:src="@drawable/ic\_action\_alarms"
android:id="@+id/Btn06"
android:text="Button06"
/\>

\</RelativeLayout\>

### TableLayout
可以設定成如下圖([下圖參考自][3])
![][image-6]
有以下幾個屬性可以設定：

• android:stretchColumns：可以放多大就放多大。可以設定多個欄位，例如「1,3,5」；設定為「\*」表示所有欄位。

• android:shrinkColumns：寬度不夠顯示所有內容的時候，指定的欄位會自動縮小。第一個欄位是0，可以設定多個欄位，例如「1,3,5」；設定為「\*」表示所有欄位。
甚至有可能擠成這樣如下圖
![][image-7]

• android:collapseColumns：隱藏指定的欄位。第一個欄位是0，可以設定多個欄位，例如「1,3,5」；設定為「\*」表示所有欄位。


### 元件與Layout之間的關係
- 元件在容器中的位置([下圖參考自][4])
![][image-8]
- 元件內部的顯示方式([下圖參考自][5])
![][image-9]



---- 

[1]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/
[2]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/
[3]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/
[4]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/
[5]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/

[image-1]:	https://farm4.staticflickr.com/3927/15221905630_7f8e077733_o.png
[image-2]:	https://farm4.staticflickr.com/3897/15212269618_d2c93db43d_o.png
[image-3]:	https://farm3.staticflickr.com/2948/15212329908_468e42f4dc_o.png
[image-4]:	https://farm3.staticflickr.com/2944/15408606085_c75b0f02c2_o.png
[image-5]:	https://farm4.staticflickr.com/3887/15375953086_818594e6f2_o.png
[image-6]:	https://farm4.staticflickr.com/3931/15221955850_3955fc723e_o.png
[image-7]:	https://farm4.staticflickr.com/3931/15408874962_62f6550c29_o.png
[image-8]:	https://farm4.staticflickr.com/3928/15221947878_0ebd598348_o.png
[image-9]:	https://farm4.staticflickr.com/3927/15221895490_d491f2c583_o.png