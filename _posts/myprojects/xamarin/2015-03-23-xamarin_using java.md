---
layout: post
category : Xamarin 
tagline: "跨平台開發"
tags : [Xamarin,Visual Studio 2015,Android,iOS,java binding library,reuse]
title: "Xamarin reuse Java library"

---

### Xamarin reuse Java （java binding library）

參考連結。基本上是用Android Jar Project去包裝，然後主Project去參考他。
http://no2don.blogspot.com/2013/09/xamarin-xamarin-jar-library.html

### 疑難雜症

有時包jar的時候會混淆，但是混淆的時候盡量避免package的大小寫造成c#的困擾，所以以下處理：

{%gist dearsherlock/6ae35cdb7981bb4d0b3a%}