建立 mnt/hgfs/UDO_GitLab/git-data

使用gedit工具並授權root能力修改配置檔案

sudo gedit /etc/gitlab/gitlab.rb 

搜索：git_data_dir
修改成：git_data_dir "新目錄"


Q：在網頁增加readme，結果出現Git operation was rejected by pre-receive hook

Q: pre-receive hook declined

