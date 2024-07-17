#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#修改默认名称
#sed -i 's/ImmortalWrt/openwrt/g' package/base-files/files/bin/config_generate

#修改默认时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
sed -i "/CST-8/a\\ \t\ \tset system.@system[-1].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate

#修改版本为编译日期
date_version=$(date +"%y.%m.%d")
sed -i "s/'%D %V %C'/'%D R${date_version} by KouJiao %C'/g" package/base-files/files/etc/openwrt_release

#移除要替换的包
rm -rf feeds/packages/net/miniupnpd

# Git稀疏克隆，只克隆指定目录到本地
function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../package
  cd .. && rm -rf $repodir
}

# 添加额外插件
git clone --depth=1 https://github.com/sirpdboy/netspeedtest.git package/netspeedtest

#upnp
git_sparse_clone master https://github.com/kiddin9/openwrt-packages miniupnpd

#迅雷快鸟
git_sparse_clone master https://github.com/immortalwrt/luci applications/luci-app-xlnetacc

./scripts/feeds update -a
./scripts/feeds install -a