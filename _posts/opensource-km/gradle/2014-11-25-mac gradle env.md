
Gradle
1.下載https://downloads.gradle.org/distributions/gradle-2.2.1-all.zip

2.然後打開terminal視窗，輸入`sudo vim ~/.bash_profile`

3.
在視窗中輸入以下：

```
GRADLE_HOME=/Users/sherlock/gradle-2.2.1;
export GRADLE_HOME
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:$GRADLE_HOME/bin
```

4.
編輯完畢後按下ctrl+x，會跳出一個下面幾行字，^X mode (^]^D^E^F^I^K^L^N^O^Ps^U^V^Y) ，請按下esc，然後輸入:wq，按下enter就可以了

5、保存.bash_profile文件后执行source ~/.bash_profile

6、查看gradle是否配置成功命令：gradle -version，若成功输出會提示

