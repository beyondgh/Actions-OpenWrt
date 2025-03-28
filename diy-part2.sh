#!/bin/bash
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
rm -rf package/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,luci-app-bandwidthd,luci-app-bypass,luci-app-dogcom,luci-app-gowebdav,luci-app-nginx-pingos,luci-app-ssr-plus,natflow}

#因上面删除small-package仓库中的错误包里有自己想要的包，但其是错误不能使用的，逼不得已删除后使用正确的源重新添加回来。本例的helloword即对应上面被删除的ssr-plus。
git clone https://github.com/sbwml/openwrt_helloworld package/helloworld

#增加上面仓库内没有的第三方包，有多少你想要的就增加多少个
git clone https://github.com/kingyond/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.6/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/BEYONDWrt/g' package/base-files/files/bin/config_generate

