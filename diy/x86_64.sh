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

# TTYD 免登录
sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 更改默认 Shell 为 zsh
#sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# 移除要替换的包
rm -rf feeds/luci/applications/luci-app-xunlei

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
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
git clone --depth=1 https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
git clone --depth=1 https://github.com/sbwml/luci-app-xunlei package/xunlei
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#git clone --depth=1 https://github.com/destan19/OpenAppFilter package/OpenAppFilter

# turbo acc
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
rm -rf package/turboacc/nft-fullcone

# iStore
git_sparse_clone main https://github.com/linkease/istore-ui app-store-ui
git_sparse_clone main https://github.com/linkease/istore luci

./scripts/feeds update -a
./scripts/feeds install -a
