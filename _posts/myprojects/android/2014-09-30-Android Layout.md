---
layout: post
category : Android 
tagline: "Android開發教學"
tags : [Android Develop,教學文章,Layout]
title: "Android 版面類型"

---
{% include JB/setup %}

#### Linear Layout
- 垂直排版，可以知道物件若超過版面也不會自動換列。

![][image-1]
- 水平排版

![][image-2]

#### RelativeLayout
- 可以設定物件相互之間的上下左右關係，需要指定”特定元件”的上下左右方，若沒有特別指定，則是置中，且允許元件疊在一起，只是很醜。

![][image-3]
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

	<RelativeLayout android:orientation="horizontal"
	xmlns:android="http://schemas.android.com/apk/res/android"
	xmlns:tools="http://schemas.android.com/tools"
	android:layout_width="match_parent"
	android:layout_height="match_parent"
	android:paddingLeft="@dimen/activity_horizontal_margin"
	android:paddingRight="@dimen/activity_horizontal_margin"
	android:paddingTop="@dimen/activity_vertical_margin"
	android:paddingBottom="@dimen/activity_vertical_margin"
	tools:context=".MyActivity">
	
	<TextView
	    android:text="@string/title"
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:background="@color/grey"
	    android:padding="@dimen/default_padding"
	    android:textSize="@dimen/title_txt_size"
	/>
	<ImageButton
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/ImgBtn01"
	    android:layout_above="@+id/Btn01"
	    />
	<Button
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/Btn01"
	    android:text="Button01"
	    />
	<Button
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/Btn02"
	    android:text="Button02"
	    android:layout_below="@id/Btn01"
	    />
	<Button
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/Btn03"
	    android:text="Button03"
	    android:layout_toLeftOf="@id/Btn02"
	    />
	<Button
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/Btn04"
	    android:text="Button04"
	    android:layout_toRightOf="@id/Btn01"
	    />
	<Button
	    android:layout_width="wrap_content"
	    android:layout_height="wrap_content"
	    android:layout_centerInParent="true"
	    android:src="@drawable/ic_action_alarms"
	    android:id="@+id/Btn05"
	    android:text="Button05"
	    />
	<Button
	android:layout_width="wrap_content"
	android:layout_height="wrap_content"
	android:layout_centerInParent="true"
	android:src="@drawable/ic_action_alarms"
	android:id="@+id/Btn06"
	android:text="Button06"
	/>
	
	~</RelativeLayout>~


[image-1]:	https://farm4.staticflickr.com/3897/15212269618_d2c93db43d_o.png
[image-2]:	https://farm3.staticflickr.com/2948/15212329908_468e42f4dc_o.png
[image-3]:	https://farm4.staticflickr.com/3887/15375953086_818594e6f2_o.png