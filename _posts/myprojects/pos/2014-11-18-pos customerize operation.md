---
layout: post
tagline: "POS Function Testing"
categories : [pos]
title: "客訂作業流程測試"

---

###客訂作業流程

1.先到後台建立訂單
![image](https://farm6.staticflickr.com/5616/15189336304_991dbcf25f_o.png)

2.選擇22A客訂作業，會先顯示系統上上壹筆訂單
![image](https://farm8.staticflickr.com/7515/15624551077_9357ed2547_o.png)

3.可選擇上方之新增
![image](https://farm8.staticflickr.com/7462/15811297262_382fbd5615_o.png)
![image](https://farm6.staticflickr.com/5612/15786084656_ecc150d166_o.png)

4.輸入客戶資料、配送資料，然後選擇下方的選購產品（請注意現在狀態為編輯，要有表身資料才能送出），若這時客人可能會給訂金，則在客訂資料頁籤輸入。

![image](https://farm9.staticflickr.com/8578/15807873961_0ddf46cc31_o.png)
![image](https://farm8.staticflickr.com/7464/15809766375_201b8e0d60_o.png)

5.點選取貨門市時，請將欄位清空，才能進行選取。
![image](https://farm8.staticflickr.com/7546/15624914210_34a260f55d_o.png)

6.按下上方的確認鍵
![image](https://farm8.staticflickr.com/7504/15190325583_fb77e937cf_o.png)

7.進行確認。
![image](https://farm6.staticflickr.com/5608/15190328293_786baae3fd_o.png)

8.確認後表單狀態會修改。這時CCRV2程式才抓的到。
![image](https://farm6.staticflickr.com/5608/15811344352_885ca77c4f_o.png)

9.點選前台CCRV2程式，開啟後點選查詢功能會出現以下的客訂作業。
![image](https://farm8.staticflickr.com/7507/15189823434_a0bae07224_o.png)

10.點選客訂訂金，表示要收錢。會出現訂單編號，請輸入，按下確認。
![image](https://farm9.staticflickr.com/8626/15190341513_76a9a2ce1b_o.png)

11系統會帶出應該要付的錢，中間欄就是要結帳的金額，因為訂單中有輸入訂金，所以表示本次就是要結訂金(若要全部付，就不需要輸入訂金欄位。)

![image](https://farm8.staticflickr.com/7475/15786131516_3cbdf45d35_o.png)

12.點選付款，然後點選金額，然後選擇現金，就可以對帳。對帳完就會如下圖
![image](https://farm8.staticflickr.com/7582/15189844234_e631d8aa99_o.png)

13.本地會有一個程式，可以上傳資料。後端就會收的到。
![image](https://farm6.staticflickr.com/5602/15190367613_466bc85eac_o.png)

14.後端收到後就會如上，看到已收多少錢
![image](https://farm6.staticflickr.com/5605/15811381842_9148b72b47_o.png)

15.點選資料回搠時是有一些假設前提
![image](https://farm6.staticflickr.com/5604/15624778417_19dd591b42_o.png)

16.若有勾選是否前取，表示要在B店取貨的時候順便結尾款(不然會在B店查不到)，另外需要注意的是，這套系統只有金流，而沒有物流。所以若沒有要付尾款，基本上就是結案了。

17.客訂取貨：輸入訂單編號
![image](https://farm8.staticflickr.com/7462/15809975245_e83efcb9b1_o.png)

18.取貨的時候，需要把尾款結掉。
![image](https://farm8.staticflickr.com/7545/15809978875_cf606f7f84_o.png)

19.結帳時也可以用信用卡。
![image](https://farm8.staticflickr.com/7553/15786325886_627375367e_o.png)

20.入帳後畫面。
![image](https://farm6.staticflickr.com/5614/15811554292_a762e4a459_o.png)

21.上傳資料後，回後台查看，已經收到全部金額。
![image](https://farm6.staticflickr.com/5602/15190559323_6158f2b459_o.png)

22.在後台，點選商品列中的商品，然後選擇自取
![image](https://farm8.staticflickr.com/7567/15624833087_ac8094aab1_o.png)
