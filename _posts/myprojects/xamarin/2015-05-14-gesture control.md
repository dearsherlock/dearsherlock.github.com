

### 手勢控制：

到google play 下載Gesture tool，設定幾種手勢，他可以依照預先註冊的手勢來判斷之後觸控到的是哪一種，算滿準確。然後dump出來放到resource目錄下。

![image](https://farm9.staticflickr.com/8772/17017957074_5db50cf20e_o.png)

參考以下這篇，其中的custom gesture recognizer的寫法。
http://developer.xamarin.com/guides/cross-platform/application_fundamentals/touch/part_4_android_touch_walkthrough/

通常是會產生在sdcard的目錄下的gesures檔案，copy到resource/raw下

程式碼如下：
{%gist dearsherlock/bed4940074b0e11aa5d3%}