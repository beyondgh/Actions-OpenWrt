#!/bin/bash
#
#使用smallpackage
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

git clone https://github.com/kenzok8/small-package package/smpackage

#使用smallpackage时需要处理
rm -rf package/smpackage/{amule,luci-app-bandwidthd,luci-app-bypass,luci-app-dogcom,luci-app-gowebdav,luci-app-nginx-pingos,luci-app-ssr-plus,natflow}

#rm -rf package/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,luci-app-bandwidthd,luci-app-bypass,luci-app-dogcom,luci-app-gowebdav,luci-app-nginx-pingos,luci-app-ssr-plus,natflow}

#因上面删除small-package仓库中的错误包里有自己想要的包，但其是错误不能使用的，逼不得已删除后使用正确的源重新添加回来。本例的helloword即对应上面被删除的ssr-plus。
git clone https://github.com/sbwml/openwrt_helloworld package/helloworld
git clone https://github.com/lisaac/luci-app-diskman package/luci-app-diskman
git clone https://github.com/zxl78585/luci-app-autoreboot.git package/luci-app-autoreboot
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.9/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/BEYONDWrt/g' package/base-files/files/bin/config_generate

# TTYD 免登录
sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

