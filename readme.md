在`config.txt`中，根据实际显示情况，调整以下参数

```
overscan_left=40	# 左
overscan_right=40	# 右
overscan_top=32		# 上
overscan_bottom=32	# 下
```

在`start_moonlight.sh`中，配置steam设备的IP地址，分辨率，帧率

```
steam_server=192.168.2.106
resolution=720
fps=60
```

执行安装脚本

```
./install.sh
```

重启树莓派或执行

```
./start_moonlight.sh
```

将启动moonlight并连接至steam设备
