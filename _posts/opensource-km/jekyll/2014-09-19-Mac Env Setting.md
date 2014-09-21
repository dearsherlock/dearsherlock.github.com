---
layout: post
category : mac 
tagline: "Jekyll Mac環境設定"
tags : [Jekyll於Mac環境設定]
title: "Jekyll系列"

---
{% include JB/setup %}

## Jekyll初認識

一個夜晚和同伴們閒聊，就開始了對於OpenSource專案的KM之旅。而要開始OpenSource之旅，勢必要在過程中做些KM[^1]。

研究了一下網路上對於這些OpenSource使用上的網友心路歷程，似乎都一致性的覺得在Windows上的環境設定就會搞死人。所以就乾脆在Mac上寫文章吧。

而要寫HTML或是在Onenote上寫或是寫Markdown文件呢？基於既然都要Open，就Open到底吧～就用Markdown來寫。（我本身是還有另外買Sharepoint Online，現在看來也應該是該關閉了～Github做了太多相同且免費的事情了）

而GitHub很容易被fork然後就Clone文章的事情就算了，基本上有網友肯來瀏覽就很不錯了。寫程式本來就是為了讓世界更美好！取之於網路，用之於網路ㄚ～

所以研究完jekyll，當然還有Markdown工具的介紹囉。另篇來介紹。


---- 

## 為啥要用Jekyll
為啥要用Jekyll？其實不使用Jekyll也可以寫文章、做KMㄚ～如[Java SE 6 技術手冊][1]，就是純粹使用md檔來寫文章，然後使用GitHub Pages[^2]來產生網頁。

Jekyll其實只是一種本地端的網頁引擎，可以把一些文章重新轉換成HTML相容的頁面，或是把一些需要重新彙整、索引的功能（以往需要依賴網頁服務器的外掛程式提供）在本地環境端處理完，且需要發布的部落格文章、技術文章可以預覽，然後使用Github指令發布到Github或使用其他工具發布到各式各樣的部落格上。

如此可以保留給技術文章寫作者的極大彈性，以及有一些範本可使用，且讓你的文章是能有整理功能的。優點如下：

1. 可tag
2. 可分目錄
3. 可有一些共用範本功能
4. 有一些環境變數可以使用

目前發現的缺點：
1. 換行需要多空一行(依據編輯器不同會有不同的呈現，如Ulysses就需要多空一行)
---- 
## 於Mac上的環境設定（XCode）
### 安裝XCode命令列開發工具
先確定有安裝xcode-select命令列開發工具，若執行以下指令可以進行軟體更新或安裝。

`$ xcode-select --install `

或是如圖

![設定][image-1]

### 檢查是否安裝XCode所需工具

檢查是否安裝完xcode的完整工具

`$ xcode-select -p`

假如看到以下就表示好了

/Applications/Xcode.app/Contents/Developer

### -檢查gcc版本：

`$ gcc --version`

如果看到以下就表示ok

`Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1  
Apple LLVM version 5.0 (clang-500.2.79) (based on LLVM 3.3svn)  
Target: x86_64-apple-darwin13.0.0  
Thread model: posix`

## 於Mac上的環境設定（Ruby）

### 安裝Mac下的套件管理軟體Homebrew

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  
應該會出現成功的訊息

 
`==> This script will install:`
`/usr/local/bin/brew`
`/usr/local/Library/...`
`/usr/local/share/man/man1/brew.1`
` `
`Press RETURN to continue or any other key to abort`
`==> /usr/bin/sudo /bin/chmod g+rwx /Library/Caches/Homebrew`
`Password:`
`==> Downloading and installing Homebrew...`
`remote: Counting objects: 197485, done.`
`remote: Compressing objects: 100% (53529/53529), done.`
`remote: Total 197485 (delta 142816), reused 197437 (delta 142780)`
`Receiving objects: 100% (197485/197485), 40.78 MiB | 779.00 KiB/s, done.`
`Resolving deltas: 100% (142816/142816), done.`
`From https://github.com/Homebrew/homebrew`
` * [new branch]      master     -> origin/master`
`HEAD is now at 514b840 sleuthkit: apply upstream build fix`
`==> Installation successful!`
`==> Next steps`

### 安裝Ruby在Mac上

`brew update  
brew install rbenv ruby-build rbenv-gem-rehash`

會出現如下

`Titan-2:~ sherlock$ brew install rbenv ruby-build rbenv-gem-rehash`
`==> Downloading https://github.com/sstephenson/rbenv/archive/v0.4.0.tar.gz`
`######################################################################## 100.0%`
`==> Caveats`
`To use Homebrew's directories rather than ~/.rbenv add to your profile:`
`  export RBENV_ROOT=/usr/local/var/rbenv`
` `
`To enable shims and autocompletion add to your profile:`
`  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi`
`==> Summary`
`🍺  /usr/local/Cellar/rbenv/0.4.0: 31 files, 152K, built in 4 seconds`
`==> Installing dependencies for ruby-build: autoconf, pkg-config`
`==> Installing ruby-build dependency: autoconf`
`==> Downloading https://downloads.sf.net/project/machomebrew/Bottles/autoconf-2.`
`######################################################################## 100.0%`
`==> Pouring autoconf-2.69.mavericks.bottle.1.tar.gz`
`🍺  /usr/local/Cellar/autoconf/2.69: 69 files, 2.0M`
`==> Installing ruby-build dependency: pkg-config`
`==> Downloading https://downloads.sf.net/project/machomebrew/Bottles/pkg-config-`
`######################################################################## 100.0%`
`==> Pouring pkg-config-0.28.mavericks.bottle.2.tar.gz`
`🍺  /usr/local/Cellar/pkg-config/0.28: 10 files, 604K`
`==> Installing ruby-build`
`==> Downloading https://github.com/sstephenson/ruby-build/archive/v20140908.tar.`
`######################################################################## 100.0%`
`==> ./install.sh`
`🍺  /usr/local/Cellar/ruby-build/20140908: 125 files, 536K, built in 3 seconds`
`==> Downloading https://github.com/sstephenson/rbenv-gem-rehash/archive/v1.0.0.t`
`######################################################################## 100.0%`
`==> Downloading https://github.com/sstephenson/rbenv-gem-rehash/commit/0756890cf`
`######################################################################## 100.0%`
`==> Patching`
`patching file README.md`
`Hunk #1 succeeded at 23 (offset -2 lines).`
`patching file etc/rbenv.d/exec/~gem-rehash.bash`
`patching file gems/rbenv-gem-rehash-1.0.0/lib/rubygems_plugin.rb`
`patching file rubygems_plugin.rb`
`patching file specifications/rbenv-gem-rehash-1.0.0.gemspec`
`==> Caveats`
`If the GEM_PATH environment variable is undefined, rbenv-gem-rehash must`
`first execute the gem env gempath command to retrieve RubyGems' default path`
`so that it can can append to the path rather than override it. This can take`
`a while--from a few hundred milliseconds on MRI to several seconds on`
`JRuby--so the default path for the current Ruby version is cached to the`
`filesystem the first time it is retrieved.`
`==> Summary`
`🍺  /usr/local/Cellar/rbenv-gem-rehash/1.0.0: 7 files, 24K, built in 4 seconds`


可以用   `rbenv install --list` 來看最新的版本

然後執行  ` rbenv install 2.1.2`



---- 

[^1]:	Knowledge Transfer

[^2]:	Github Pages是Github上一個網頁服務，大多的使用者拿來寫Blog用。

[1]:	https://github.com/JustinSDK/JavaSE6Tutorial "Java SE 6 技術手冊"

[image-1]:	https://farm4.staticflickr.com/3925/15274772466_2b253ac553_o.png "setting"