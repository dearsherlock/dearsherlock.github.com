---
layout: post
category : Android 
tagline: "Android開發教學"
tags : [Android Develop,教學文章,推薦連結,MVC]
title: "Android Activity之UI傳值"

---

####結論
如下圖可以很清楚看出並非MVC架構，當然這是內建的Hello world寫法，應該還會有比較漂亮的架構
還沒看到那邊。進展很慢ㄚ～

![image](https://farm3.staticflickr.com/2945/15463338181_71ef47735d_o.png)


以下是[websequence](https://www.websequencediagrams.com/)程式

```  
title Activity UI Update  
note over MainActivity extends Activity: startActivityForResult()之後，\n關閉子Activity更新內容update t
note over MainActivity extends Activity: override onActivityResult(...)
MainActivity extends Activity ->ItemAdapter extends ArrayAdapter<Item>: itemAdapter.notifyDataSetChanged()
note over ItemAdapter extends ArrayAdapter<Item>:override getView(int position, View convertView, ViewGroup parent)
"ItemAdapter extends ArrayAdapter<Item>" -> "ItemAdapter extends ArrayAdapter<Item>": 用position取出資料
"ItemAdapter extends ArrayAdapter<Item>" -> "ItemAdapter extends ArrayAdapter<Item>": 用convertView來取出UI
"ItemAdapter extends ArrayAdapter<Item>" -> "ItemAdapter extends ArrayAdapter<Item>": 對UI塞值
```  


