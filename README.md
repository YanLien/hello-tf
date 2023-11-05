## 项目实现步骤
* [x] 第一步：准备模型 
    * 安装依赖
        * pip install tensorflow grpcio-tools
    * 生成机器学习模型
    * 用Python测试模型
* [x] 第二步：用Rust测试模型
    * Rust语言加载模型
    * 运行推理模型
* [x] 第三步：用Rust实现一个推理服务
    * 定义proto
    * 实现GRPC服务
* [x] 第四步：用Python测试GRPC服务
    * 生成Python Client
    * 用Client调用grpc服务
    * 检验结果

生成GRPC `python -m grpc_tools.protoc -I../proto --python_out=. --grpc_python_out=. ../proto/infer.proto`
xxxx_pb2.py 保存根据接口定义文件中的<数据message>类型生成的python类
xxxx_pb2_grpc.py 保存根据接口定义文件中的<服务service>方法类型生成的python调用RPC方法

## WSL中的adb连接

1.在windows环境中执行adb tcpip 5555
2.adb shell ifconfig wlan0 查看ip
```
wlan0     Link encap:UNSPEC
          inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::5d2f:2ac8:d774:23f9/64 Scope: Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:44664 errors:0 dropped:0 overruns:0 frame:0
          TX packets:24463 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:63542612 TX bytes:1837582
```
3.在wsl中adb connect 192.168.1.11

## WSL连接USB设备

1. 首先以管理员(打开Windows Terminal之后，按住ctrl点击新建标签页的加号，快速打开管理员模式的Powershell或CMD)身份运行一个PowerShell命令行界面，然后输入以下命令：
`usbipd wsl list`
2. 选择你要连接的USB设备的BUSID值，然后在PowerShell中输入以下指令：
`usbipd wsl attach --build <busid> #注意，<busid>是一个整体，直接输入busid号就行，不要带<>`  
需要注意的是，输入指令后，Ubuntu的bash命令行可能会提醒需要输入密码，因为此操作需要sudo权限。
3. 然后就可以查看USB设备是否成功连接了，Ubuntu的bash中输入以下命令：
`lsusb`
4. 在WSL中使用完设备后，可以直接Windows弹出USB 设备或者直接拔掉，即从物理层面断开USB设备连接，也可以管理员模式下从 PowerShell 运行此命令：
`usbipd wsl detach --busid <busid>  #记得修改<busid>具体号码`

### 注意事项：
每次关闭wsl或者与usb设备断开连接后，需要重新连接设备，有两种重新连接USB设备的方法：
+ 上文介绍的，运行管理员模式PowerShell，usbipd命令连接；
+ Ubuntu的bash界面连接，输入以下指令：  
    ```
    useip list -r $HOSTNAME.local #查看已连接过的设备信息，如记得busid，该命令非必须执行命令  
    sudo usbip attach -r #HOSTNAME.local -b <busid> #连接USEB设备，注意替换<busid>
    ```
+ 执行以下命令共享usb设备（即手机）
```
# 这里的6-3替换成自己的
usbipd bind --busid 6-3
```
+ 出现`List of devices attached`问题
设备信息:`Bus 001 Device 008: ID 05c6:901d Qualcomm, Inc.`
那么我们进入到cd /etc/udev/rules.d/下，新建一个xxxx.rules文件（sudo vim xxxx.rules），在这个文件中写上：
`SUBSYSTEM=="usb", ATTRS{idVendor}=="05c6", ATTRS{idProduct}=="901d",MODE="0666"`
保存，再为xxxx.rules加上权限（sudo chmod a+x xxxx.rules）.


### 使用adb连接手机

直接`sudo adb devices`

1. 首先停止adb
    ```
    # 找到adb的进程id并杀死
    ps -ef|grep adb
    ```  
2. 使用root权限启动adb server
    ```
    sudo adb start-server
    ```
3. 查看是否连接成功
    ```
    # 执行命令后应该能在下方看到自己的设备
    adb devices 
    ```