---
layout: post
category : Android 
tagline: "Jekyll疑難雜症"
tags : [Jekyll,Regenerate Fail,重新產生頁面,錯誤訊息,Actor crashed,ASCII]
title: "解決更新Jekyll頁面後無法呈現問題 "

---

### 更新頁面後無法產生新網頁預覽

更新了ShellShock patch之後出現了這個問題，還以為是該patch的問題，原來不是。
是剛好這幾次都用中文檔案命名，所以會出現以下的錯誤訊息。後來改用中文就好了。
但這問題其實也不大，只是重新產生更新頁面的時候會跑不出來，若關閉server再重開還是看的到更新資料。


```
{% highlight ruby %}

$ rake preview
Configuration file: /Users/sherlock/Dropbox/MyGithub/dearsherlock.github.com/\_config.yml
	        Source: /Users/sherlock/Dropbox/MyGithub/dearsherlock.github.com
	   Destination: /Users/sherlock/Dropbox/MyGithub/dearsherlock.github.com/_site
	  Generating... 
	                done.
 Auto-regeneration: enabled for '/Users/sherlock/Dropbox/MyGithub/dearsherlock.github.com'
Configuration file: /Users/sherlock/Dropbox/MyGithub/dearsherlock.github.com/\_config.yml
	Server address: http://0.0.0.0:4000/
  
  Server running... press ctrl-c to stop.
E, [2014-09-29T13:18:49.222989 #12199] ERROR -- : Actor crashed!
Encoding::CompatibilityError: inspected result must be ASCII only or use the same encoding with default external
	/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/set.rb:474:in inspect'
	/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/set.rb:474:in inspect'
	/Library/Ruby/Gems/2.0.0/gems/listen-2.7.9/lib/listen/directory.rb:21:in scan'
	/Library/Ruby/Gems/2.0.0/gems/listen-2.7.9/lib/listen/change.rb:38:in 'change'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/calls.rb:26:in public_send'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/calls.rb:26:in dispatch'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/calls.rb:63:in 'dispatch'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/cell.rb:60:in 'block in invoke'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/cell.rb:71:in 'block in task'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/actor.rb:357:in 'block in task'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/tasks.rb:57:in 'block in initialize'
	/Library/Ruby/Gems/2.0.0/gems/celluloid-0.16.0/lib/celluloid/tasks/task_fiber.rb:15:in block in create'
	{% endhighlight %}

```

![image][image-1]

[image-1]:	https://farm4.staticflickr.com/3918/15201758650_308982bbf2_o.png