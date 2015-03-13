
###Android Trouble Shooting


1.BUILD ERROR:

Gradle 'AndroidMVVM-master' project refresh failed
Error:No such property: bootClasspath for class: com.android.build.gradle.AppPlugin

-解法：好像是Gradle的問題，把app下面的build.gradle中所引用的版本從1.1改成1.0就ok。

        classpath 'com.android.tools.build:gradle:1.1.0'
--->

        classpath 'com.android.tools.build:gradle:1.0.0'
