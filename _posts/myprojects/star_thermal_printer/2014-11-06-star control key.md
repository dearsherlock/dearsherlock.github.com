---
layout: post
category : Star Printer 
tagline: "Android連接Star印製"
tags : [Android Develop,教學文章,Star Printer,Android Studio]
title: "整理Android 連接Star印表機的控制碼"

---

###整理控制碼(java版)



| 控制碼陣列                                                                                                                                                                                                                                                                                             | 描述                        |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| { 0x1b, 0x40 }                                                                                                                                                                                                                                                                                         | Initialization              |
| { 0x1b, 0x44, 0x10, 0x00 }                                                                                                                                                                                                                                                                             | \<ESC> \<D> n1 n2 nk \<NUL> |
| { 0x1b, 0x1d, 0x61, 0x31 }                                                                                                                                                                                                                                                                             | \<ESC> \<GS> a n            |
| { 0x1b, 0x69, 0x02, 0x00 }                                                                                                                                                                                                                                                                             | \<ESC> \<i> n1 n2           |
| { 0x1b, 0x45 }                                                                                                                                                                                                                                                                                         | \<ESC> \<E>                 |
| {0x1b, 0x1c, 0x70, 0x01, 0x00}                                                                                                                                                                                                                                                                         | Stored Logo Printing        |
| { 0x1b, 0x46 }                                                                                                                                                                                                                                                                                         | \<ESC> \<F>                 |
| { 0x1b, 0x1d, 0x61, 0x01} { 0x1b, 0x62, 0x34, 0x31, 0x32, 0x50 } "content_to_1D_barcode_\u001e\r\n".getBytes()                                                                                                                                                                                         | 1D barcode example          |
| { 0x1b, 0x1d, 0x79, 0x53, 0x30, 0x02} { 0x1b, 0x1d, 0x79, 0x53, 0x31, 0x03 } { 0x1b, 0x1d, 0x79, 0x53, 0x32, 0x03} { 0x1b, 0x1d, 0x79, 0x44, 0x31, 0x00, (byte) (barCodeData.length % 256), (byte) (barCodeData.length / 256) } barCodeData { 0x1b, 0x1d, 0x79, 0x50, 0x0a} { 0x1b, 0x1d, 0x61, 0x30 } | QRCode example              |
| \n                                                                                                                                                                                                                                                                                                     | 換行                        |
| { 0x1b, 0x64, 0x33 }                                                                                                                                                                                                                                                                                   | Cut                         |
| { 0x07 }                                                                                                                                                                                                                                                                                               | Kick cash drawer            |