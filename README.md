# 开机设置国家地理/每日必应/每日聚焦为桌面壁纸



### 一. 功能:

开机更换国家地理/每日必应/每日聚焦 每日一图为桌面背景,如果解析失败,下载失败,不会修改当前壁纸.

http://www.ngchina.com.cn/photography/photo_of_the_day/

https://cn.bing.com/

"C:\\Users\\\$USERNAME\\AppData\\Local\\Packages\\Microsoft.Windows.ContentDeliveryManager_$HASH\\LocalState\\Assets"


### 二. 依赖:
python3

#### python依赖:
##### 公共依赖
urllib.request
requests
re
os
ctypes
random



##### 每日聚焦依赖

shutil
imghdr
Pillow
time




### 三. 使用方法

#### 1.安装Python3

https://www.python.org/downloads/




#### 2.运行set_wallpaper.py,看是否能够成功.

在cmd命令窗口下,使用

python set_wallpaper.py

定位修改问题




#### 3.修改set_wallpaper.vbs中的真实路径

Set ws = createObject("WScript.shell")
ws.run "cmd /c C:\Users\jared\AppData\Local\Programs\Python\Python38-32\python.exe  D:\jared\coding\photo_of_the_day\set_wallpaper.py > D:\jared\coding\photo_of_the_day\output.log.txt 2>&1",vbhide



其中,包括
1) python.exe的完整路径

2) set_wallpaper.py的完整路径

3) 输出日志的路径,可以不设置



#### 4.将set_wallpaper.vbs添加到开机启动项
1) 复制set_wallpaper.vbs到路径:
	C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
2) 或者运行 cp_to_startup_dir.bat (如果360等安全软件拦截,请允许该程序所有操作.)




###                                                       四. Enjoy it!!!
如果生成的exe 360报毒,就自己使用build.bat生成.
具体干了哪些事,可以看得到.


