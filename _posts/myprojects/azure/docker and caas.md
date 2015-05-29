
### Docker 於CAAS
新增一個VM，是Ubuntu 14

### 安裝Docker

因為預設並沒有安裝docker，(極力建議建立一個範本是有安裝的)，我是以[這裡](http://jamyy.us.to/blog/2014/06/6500.html)的blog進行安裝，先執行以下指令檢查核心版本
`uname -r` 
結果會是
`3.13.0-45-generic`

聽說需要在3.8以上比較安全沒有bug。

底下開始安裝
`sudo apt-get install apt-transport-https`

 `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9`
 
 `sudo apt-get update`
 
` sudo apt-get install lxc-docker`Ye75ZzUT0g410UkxQ84

將帳號加入docker群組，然後重新登入
`sudo usermod -a -G docker $USER`

用vi編輯docker設定
`sudo vi /etc/default/docker`

加上 DOCKER_OPTS="-g /path"
按下:wq儲存離開

重新啟動docker service
`sudo service docker restart`

### 安裝範例container
拉下wordpress
 `docker pull tutum/wordpress` 

