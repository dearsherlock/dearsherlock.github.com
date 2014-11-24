---
layout: post
category : POS 
tagline: "POS大亂鬥"
tags : [asus ,company network]
title: "測試Squared Register功能"

---

###Square Register功能測試
###感想
![image](https://farm8.staticflickr.com/7512/15866583075_6da871e1e2_o.png)
就是簡潔，簡易，雖然沒有支援很複雜的優惠折扣方案，但是也提供了相當的彈性(Data Model、API架構)，也許可以藉由API的介接做到複雜的計算。前端銷售可以由iPhone、Android Pad來銷售;畫面相當的簡潔（前端沒有報表，但是可以處理已經夠用的購買交易、退貨功能。）折扣、退貨的方式需要充分的測試才知道是否有缺陷;交易過程中的回退(敲錯金額或品項)似乎有點不足(硬著頭皮敲完？)
但若想要半小時內開店，這些功能是足夠了。外部支援的硬體也已經有對應方案，我們在這塊也可以透過支援清單或許找到一些較為便宜的方案。


###後台功能(庫存管理、商品管理類)
####商品管理
1.可以設定商品大類、品項、價格、SKU
![image](https://farm9.staticflickr.com/8632/15680425889_0fa4183ff9_o.png)

2.設定配料(加價)
![image](https://farm8.staticflickr.com/7524/15866451715_ef4449becc_o.png)

配料之套用商品(因為不同商品會有不同的加價配料方式)
![image](https://farm8.staticflickr.com/7527/15678938368_a1d9ff00a7_o.png)

3.商品大類管理，可以在此新增修改，也可以在建立品項的時候快速新增，這裡還有套用品項的功能(不同品項可以跨不同產品大類)
![image](https://farm9.staticflickr.com/8631/15866467425_da643e8bf1_o.png)

4.優惠管理，可以優惠折扣，或是優惠價格。也可以留白，讓結帳的時候決定。
![image](https://farm8.staticflickr.com/7524/15680468579_90b870131a_o.png)

5.稅額管理
![image](https://farm9.staticflickr.com/8622/15679159430_1fcfb385b3_o.png)

####庫存管理，具有庫存量警示功能
![image](https://farm8.staticflickr.com/7526/15679098260_42a49b510e_o.png)

###後台功能（查詢類）
著重於報表功能，分為交易總覽、報表功能

####交易總覽

![image](https://farm9.staticflickr.com/8679/15840392866_c57d507896_o.png)

可以用不同鍵值查詢
![image](https://farm8.staticflickr.com/7465/15243955824_96f7ca8322_o.png)

可以查看交易明細
![image](https://farm8.staticflickr.com/7518/15246567863_b3be5990ee_o.png)

處理退貨
![image](https://farm8.staticflickr.com/7496/15840842836_9dcaef8623_o.png)

####報表功能

1.每天各時段報表，以及交易金額的歸納分析
![image](https://farm8.staticflickr.com/7478/15680579447_563cf771ef_o.png)  

2.銷售趨勢圖，當天、當週、當年份的銷售趨勢
![image](https://farm8.staticflickr.com/7476/15680359309_52e4008f13_o.png)

3.支付方式歸納分析
![image](https://farm9.staticflickr.com/8683/15864419721_f55a1ab84c_o.png)

4.每天的銷售品項歸納分析
![image](https://farm8.staticflickr.com/7549/15865743692_ef2737c27b_o.png)

5.商品大類歸納分析
![image](https://farm9.staticflickr.com/8591/15680648167_e0c4755373_o.png)

6.打出去的折扣
![image](https://farm9.staticflickr.com/8633/15246837673_b002a89151_o.png)

7.加價配料
![image](https://farm9.staticflickr.com/8627/15678901928_bf3d421e21_o.png)

8.稅歸納分析
![image](https://farm8.staticflickr.com/7537/15679084920_ba35b59707_o.png)


###客戶關係維護
具有雙向互動機會，並可以藉由客戶留下電子信箱收取收據而得到客戶溝通的機會。
(客戶需回覆才會有關係關連的價值)

####電子收據與客戶意見回饋
![image](https://farm9.staticflickr.com/8561/15680076199_cae3f1826d_o.png)

####客戶意見回饋
![image](https://farm8.staticflickr.com/7477/15680311277_82f0d41e39_o.png)

####店家回覆客戶意見
![image](https://farm8.staticflickr.com/7549/15680329187_4fc0e66b6f_o.png)

####客戶收到店家回覆意見
![image](https://farm9.staticflickr.com/8676/15680176269_828d4b8702_o.png)

###系統設定
####收據列印客製化設定
![image](https://farm9.staticflickr.com/8656/15679118308_b9b3a80cfa_o.png)
####Email通知設定
![image](https://farm8.staticflickr.com/7530/15866650645_e701455917_o.png)

###API平台
####完善的文件
![image](https://farm8.staticflickr.com/7510/15840702766_8b6eaa9975_o.png)

####API服務
![image](https://farm8.staticflickr.com/7534/15680764577_7cc7336cc8_o.png)


###整合硬體
已經有一些硬體整合了，而針對iPad還有專用的立架可提供。Android不透過立架也有一些硬體可支援（需要支援USB On-The-Go或USB Host mode）。

![image](https://farm8.staticflickr.com/7514/15679165828_e75998d3a0_o.png)

[硬體支援方案](https://squareup.com/help/us/en/article/5084-supported-hardware)


###app畫面
![image](https://farm8.staticflickr.com/7533/15680803909_2e747f7bdd_o.png)

![image](https://farm8.staticflickr.com/7505/15866178052_1b95bed893_o.png)

![image](https://farm8.staticflickr.com/7489/15679475370_13e935b883_o.png)

![image](https://farm8.staticflickr.com/7550/15247175363_fcedfd4d02_o.png)