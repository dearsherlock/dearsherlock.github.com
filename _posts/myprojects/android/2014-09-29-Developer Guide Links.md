---
layout: post
category : Android 
tagline: "Android開發教學"
tags : [Android Develop,教學文章,推薦連結]
title: "網路上人家已經寫好的Android教學"

---

### 介紹一些Android開發的文章


#### [Android Tutorial 第一堂（3）開始設計 Android 應用程式][1]
（[備份位置][2]）

課程內容以下：  
- 建立專案過程的設定檔內容
- 建立專案過程產生的目錄
- 執行專案過程(選擇模擬器)
- AndroidManifest.xml設定檔內容說明

#### [Android Tutorial 第一堂（4）開發 Android 應用程式的準備工作][3]（[備份位置][4]）

課程內容以下：  
- 規劃app發展指引（草圖、互動、資源檔規劃）
- 設計時所需資源介紹

#### [Android Tutorial 第二堂（1）規劃與建立應用程式需要的資源][5]([備份位置][6])
課程內容以下：  
- 建立新專案，資源目錄下的各種資源類型介紹  
- 資源檔如何設定、以及如何取用資源檔案中的內容(取用字串、背景色、尺寸、圖形資源、選單資源)  
- 資源檔如何支援多語系

#### [Android Tutorial 第二堂（2）設計應用程式使用者介面][7]
課程內容以下：  
- View與Layout的種類以及擺放位置  
- Layout xml 的規範原則  
#### [Android Tutorial 第二堂（3）應用程式與使用者的互動][8]
課程內容以下：  
- 事件的註冊(使用xml)以及控制  
- 用程式碼撰寫事件註冊  
- 事件註冊與撰寫的最佳解決方案推薦  

#### [Android Tutorial 第二堂（4）建立與使用 Activity 元件][9]
課程內容以下：  
- 加入新Activity的相關步驟(manifest設定、事件、theme套用)  
- 不同Activity之間傳遞資料  
    1. 使用Intent物件傳送指令以及參數：getIntent()、setResult()  
    2. 子畫面送出前判斷目前畫面  
    3. 結束畫面：finish()  

#### [Android Tutorial 第三堂（1）為ListView元件建立自定畫面][10]
課程內容如下：  
- 客製化ListView選項的顯示功能(選項物件的設計、Layout要怎麼設計)  
- 開發客製化項目後所對應Adapter物件：該物件需要繼承`extends ArrayAdapter<選項物件型態>`   
- 如何於ListView元件使用客製化過的Adapter。  
- 知道UI更新值的過程並非使用MVC。而是由UI通知Control更新，Control自行更新View。

#### [Android Tutorial 第三堂（2）儲存與讀取應用程式資訊][11]
課程內容如下：  
- 各種不同設定Key-Value的Preference  
> > - PreferenceActivity
> > - EditTextPreference
> > - CheckBoxPreference
> > - SwitchPreference
> > - ListPreference
> > - MultiSelectListPreference
> > - RingtonePreference
> > - PreferenceCategory


#### 訓練所Android基礎課程（簡報與範例資料）
- https://sites.google.com/site/ronforwork/Home/android-2

#### 訓練所Android基礎課程 (錄影)
- http://www.youtube.com/user/ronforwork/videos?view=1



#### 其他資源

- [圖示資源，但請注意授權][12]
- [配色導引（官方網站）][13]
- [配色導引(Adobe)][14]
- [圖形資源(官方網站）][15]






---- 



[1]:	http://www.codedata.com.tw/mobile/android-tutorial-the-1st-class-3-app-project/
[2]:	https://onedrive.live.com/redir?page=view&resid=9E5410AD0DC2833C!33390&authkey=!AFMfQbbpRlxU_Fc
[3]:	http://www.codedata.com.tw/mobile/android-tutorial-the-1st-class-4-before-developing-an-app/
[4]:	https://onedrive.live.com/view.aspx?cid=9e5410ad0dc2833c&id=documents&resid=9E5410AD0DC2833C%2133390&app=OneNote&authkey=!AFMfQbbpRlxU_Fc&&wd=target%28%2F%2F%E6%96%B0%E7%9A%84%E7%AF%80%201.one%7Cd9eb8d14-a331-a24c-8c2e-5fbe7a31bc1a%2FAndroid%20Tutorial%20%E7%AC%AC%E4%B8%80%E5%A0%82%EF%BC%884%EF%BC%89%E9%96%8B%E7%99%BC%20Android%20%E6%87%89%E7%94%A8%E7%A8%8B%E5%BC%8F%E7%9A%84%E6%BA%96%E5%82%99%E5%B7%A5%E4%BD%9C%7C8bde76c4-7ef9-e54b-bb52-f9cf018d0bfc%2F%29
[5]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-1-res/
[6]:	https://onedrive.live.com/edit.aspx/%e6%96%87%e4%bb%b62/Android%e9%96%8b%e7%99%bc%e6%89%8b%e5%86%8a%e7%ad%86%e8%a8%98?cid=9e5410ad0dc2833c&id=documents?id=%2F&wd=target%28%E6%96%B0%E7%9A%84%E7%AF%80%201.one%7CD9EB8D14-A331-A24C-8C2E-5FBE7A31BC1A%2FAndroid%20Tutorial%20%E7%AC%AC%E4%BA%8C%E5%A0%82%EF%BC%881%EF%BC%89%E8%A6%8F%E5%8A%83%E8%88%87%E5%BB%BA%E7%AB%8B%E6%87%89%E7%94%A8%E7%A8%8B%E5%BC%8F%E9%9C%80%E8%A6%81%E7%9A%84%E8%B3%87%E6%BA%90%7CD28EC984-3676-294B-8601-85FFDEE93CA9%2F%29%0Aonenote:https://d.docs.live.net/9e5410ad0dc2833c/%E6%96%87%E4%BB%B62/Android%E9%96%8B%E7%99%BC%E6%89%8B%E5%86%8A%E7%AD%86%E8%A8%98/%E6%96%B0%E7%9A%84%E7%AF%80%201.one#Android%20Tutorial%20%E7%AC%AC%E4%BA%8C%E5%A0%82%EF%BC%881%EF%BC%89%E8%A6%8F%E5%8A%83%E8%88%87%E5%BB%BA%E7%AB%8B%E6%87%89%E7%94%A8%E7%A8%8B%E5%BC%8F%E9%9C%80%E8%A6%81%E7%9A%84%E8%B3%87%E6%BA%90&section-id=%7BD9EB8D14-A331-A24C-8C2E-5FBE7A31BC1A%7D&page-id=%7BD28EC984-3676-294B-8601-85FFDEE93CA9%7D&end
[7]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-2-ui/
[8]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-3-interaction/
[9]:	http://www.codedata.com.tw/mobile/android-tutorial-the-2nd-class-4-activity/
[10]:	http://www.codedata.com.tw/mobile/android-tutorial-the-3rd-class-1-listview/
[11]:	http://www.codedata.com.tw/mobile/android-tutorial-the-3rd-class-2-preference/
[12]:	http://www.smashingmagazine.com/tag/icons/
[13]:	https://developer.android.com/design/style/color.html
[14]:	https://kuler.adobe.com/zh/explore/most-popular/?time=month
[15]:	http://developer.android.com/design/downloads/index.html