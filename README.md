<div align="center">
<img width="768" src="https://cdn.jsdelivr.net/gh/koujiaobro/OpenWrt/images/openwrt.png"/>
<h1>OpenWrt — x86_64云编译</h1>


# 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 固件默认管理地址：`192.168.2.1` 默认用户：`root` 默认密码：`password`
- 源码来源：https://github.com/immortalwrt/immortalwrt.git
- 云编译来源：https://github.com/haiibo/OpenWrt

## 固件下载 [![](https://img.shields.io/badge/-编译状态及下载链接-FFFFFF.svg)](#固件下载-)
点击下表中 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/koujiaobro/OpenWrt/releases) 即可跳转到该设备固件下载页面
| 平台+设备名称 | 固件编译状态 | 配置文件 | 固件下载 |
| :-------------: | :-------------: | :-------------: | :-------------: |
| [![](https://img.shields.io/badge/OpenWrt-X86_64位-32C955.svg?logo=openwrt)](https://github.com/koujiaobro/OpenWrt/blob/main/.github/workflows/X86_64-OpenWrt.yml) | [![](https://github.com/koujiaobro/OpenWrt/actions/workflows/X86_64-OpenWrt.yml/badge.svg)](https://github.com/koujiaobro/OpenWrt/actions/workflows/X86_64-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/koujiaobro/OpenWrt/blob/main/configs/x86_64.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/koujiaobro/OpenWrt/releases/tag/X86_64) |
| [![](https://img.shields.io/badge/OpenWrt-X86_Mini_64位-32C955.svg?logo=openwrt)](https://github.com/koujiaobro/OpenWrt/blob/main/.github/workflows/X86_64-Mini-OpenWrt.yml) | [![](https://github.com/koujiaobro/OpenWrt/actions/workflows/X86_64-Mini-OpenWrt.yml/badge.svg)](https://github.com/koujiaobro/OpenWrt/actions/workflows/X86_64-Mini-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/koujiaobro/OpenWrt/blob/main/configs/x86_64-mini.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/koujiaobro/OpenWrt/releases/tag/X86_64-mini) |
| [![](https://img.shields.io/badge/OpenWrt-redmi_ax3000-32C955.svg?logo=openwrt)](https://github.com/koujiaobro/OpenWrt/blob/main/.github/workflows/redmi_ax3000-OpenWrt.yml) | [![](https://github.com/koujiaobro/OpenWrt/actions/workflows/redmi_ax3000-OpenWrt.yml/badge.svg)](https://github.com/koujiaobro/OpenWrt/actions/workflows/redmi_ax3000-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/koujiaobro/OpenWrt/blob/main/configs/redmi_ax3000.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/koujiaobro/OpenWrt/releases/tag/redmi_ax3000) |

## 插件预览 [![](https://img.shields.io/badge/-固件插件及功能预览-FFFFFF.svg)](#插件预览-)
<details>
<summary><b>&nbsp;X86插件预览</b></summary>
<br/>
<details>
<summary><b>-- 状态</b></summary>
　 概况<br/>
　 路由<br/>
　 防火墙<br/>
　 系统日志<br/>
　 系统进程<br/>
　 实时信息<br/>
　 负载均衡<br/>
　 释放内存
</details>
<details>
<summary><b>-- 系统</b></summary>
　 系统<br/>
　 管理权<br/>
　 软件包<br/>
　 启动项<br/>
　 计划任务<br/>
　 挂载点<br/>
　 磁盘管理<br/>
　 备份/升级<br/>
　 自定义命令<br/>
　 文件传输<br/>
　 定时重启<br/>
　 Argon 主题设置<br/>
　 重启<br/>
　 关机<br/>
　 TTYD 终端
</details>
<details>
<summary><b>-- 服务</b></summary>
　 PassWall<br/>
　 解锁网易云音乐播放限制<br/>
　 带宽监控<br/>
　 Watchcat<br/>
　 网络唤醒<br/>
　 KMS 服务器<br/>
　 迅雷下载<br/>
　 MWAN3分流助手<br/>
　 AList<br/>
　 DDNS-Go<br/>
　 网速控制<br/>
　 MultiSD_Lite<br/>
　 udpxy<br/>
　 uHTTPd<br/>
　 UPnP<br/>
　 迅雷快鸟
</details>
<details>
<summary><b>-- iStore</b></summary>
</details>
<details>
<summary><b>-- Docker</b></summary>
　 概览<br/>
　 容器<br/>
　 镜像<br/>
　 网络<br/>
　 存储卷<br/>
　 事件<br/>
　 设置
</details>
<details>
<summary><b>-- 网络存储</b></summary>
　 NFS 管理<br/>
　 Aria2<br/>
　 USB 打印服务器<br/>
　 硬盘休眠<br/>
　 挂载 SMB 网络共享<br/>
　 miniDLNA<br/>
　 网络共享
</details>
<details>
<summary><b>-- 网络</b></summary>
　 接口<br/>
　 路由<br/>
　 DHCP/DNS<br/>
　 IP/MAC 绑定<br/>
　 网络诊断<br/>
　 SQM 队列管理<br/>
　 防火墙<br/>
　 网速测试<br/>
　 Socat<br/>
　 Turbo ACC 网络加速<br/>
　 多线多拨<br/>
　 负载均衡
</details>
　 <b>退出</b>
</details>

## 定制固件 [![](https://img.shields.io/badge/-项目基本编译教程-FFFFFF.svg)](#定制固件-)
1. 首先要登录 Gihub 账号，然后 Fork 此项目到你自己的 Github 仓库
2. 修改 `configs` 目录对应文件添加或删除插件，或者上传自己的 `xx.config` 配置文件
3. 插件对应名称及功能请参考恩山网友帖子：[Applications 添加插件应用说明](https://www.right.com.cn/forum/thread-3682029-1-1.html)
4. 如需修改默认 IP、添加或删除插件包以及一些其他设置请在 `diy-script.sh` 文件内修改
5. 添加或修改 `xx.yml` 文件，最后点击 `Actions` 运行要编译的 `workflow` 即可开始编译
6. 编译大概需要3-5小时，编译完成后在仓库主页 [Releases](https://github.com/haiibo/OpenWrt/releases) 对应 Tag 标签内下载固件
<details>
<summary><b>&nbsp;如果你觉得修改 config 文件麻烦，那么你可以点击此处尝试本地提取</b></summary>

1. 首先装好 Linux 系统，推荐 Debian 11 或 Ubuntu LTS

2. 安装编译依赖环境

   ```bash
   sudo apt update -y
   sudo apt full-upgrade -y
   sudo apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
   bzip2 ccache clang cmake cpio curl device-tree-compiler ecj fastjar flex gawk gettext gcc-multilib \
   g++-multilib git gnutls-dev gperf haveged help2man intltool lib32gcc-s1 libc6-dev-i386 libelf-dev \
   libglib2.0-dev libgmp3-dev libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5 \
   libncursesw5-dev libpython3-dev libreadline-dev libssl-dev libtool lld llvm lrzsz mkisofs msmtp \
   nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip python3-ply \
   python3-docutils python3-pyelftools qemu-utils re2c rsync scons squashfs-tools subversion swig \
   texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
   ```

3. 下载源代码，更新 feeds 并安装到本地

   ```bash
   git clone -b master --single-branch --filter=blob:none https://github.com/immortalwrt/immortalwrt
   cd immortalwrt
   ./scripts/feeds update -a
   ./scripts/feeds install -a
   ```

4. 复制 diy-script.sh 文件内所有内容到命令行，添加自定义插件和自定义设置

5. 命令行输入 `make menuconfig` 选择配置，选好配置后导出差异部分到 seed.config 文件

   ```bash
   make defconfig
   ./scripts/diffconfig.sh > seed.config
   ```

7. 命令行输入 `cat seed.config` 查看这个文件，也可以用文本编辑器打开

8. 复制 seed.config 文件内所有内容到 configs 目录对应文件中覆盖就可以了

## 特别提示 [![](https://img.shields.io/badge/-个人免责声明-FFFFFF.svg)](#特别提示-)

- **本人不对任何人因使用本固件所遭受的任何理论或实际的损失承担责任！**

- **本固件禁止用于任何商业用途，请务必严格遵守国家互联网使用相关法律规定！**

<a href="#readme">
<img src="https://img.shields.io/badge/-返回顶部-FFFFFF.svg" title="返回顶部" align="right"/>
</a>
