


adb over tcp


1.先透過USB連接裝置。

2.執行目錄：
/Applications/android sdk/platform-tools/adb 下的adb指令。

`
/Applications/android\ sdk/platform-tools/adb`


3.執行adb tcpip port,執行完後拔開usb
ex:

`/Applications/android\ sdk/platform-tools/adb tcpip 6666`

4.使用adb來連線
ex:

`/Applications/android\ sdk/platform-tools/adb connect 192.168.1.178:6666`

應該是會出現
`
connected to 192.168.1.178:6666`

若要輸出log，請執行
`/Applications/android\ sdk/platform-tools/adb logcat
`

若有兩台以上需要無線debug，則請使用以下指令看裝置號碼
`/Applications/android\ sdk/platform-tools/adb devices
`
使用以下指令即可建立port
`/Applications/android\ sdk/platform-tools/adb -s 裝置編號 tcpip 7777`

接下來就是連線

`
connected to 192.168.1.1:7777`

然後就可以在android studio的debug視窗中看到兩台裝置了。

