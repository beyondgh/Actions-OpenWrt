基于github actions编译的immortalwrt(24.10)x86-64固件。
来源于P3TERX(https://github.com/P3TERX/Actions-OpenWrt)， 同时参考、移植了Haiibo(https://github.com/haiibo/OpenWrt) 的代码过来，解决了编译时空间不够问题。
默认编译的是x86-64固件，集成的插件如下：
luci-app-accesscontrol-plus
luci-app-adguardhome
luci-app-advancedplus 
luci-app-appfilter
luci-app-attendedsysupgrade
luci-app-autoreboot
luci-app-chatgpt-web
luci-app-diskman
luci-app-dockerman
luci-app-eqosplus
luci-app-filebrowser-go
luci-app-gecoosac
luci-app-homeproxy
luci-app-iptvhelper
luci-app-mosdns
luci-app-nekobox
luci-app-netdata
luci-app-netspeedtest
luci-app-netwizard
luci-app-niki
luci-app-nlbwmon
luci-app-onliner
luci-app-openclash
luci-app-p910nd
luci-app-partexp
luci-app-passwall
luci-app-passwall2
luci-app-poweroffdevice
luci-app-ramfree
luci-app-samba4
luci-app-ssr-plus
luci-app-istore
luci-app-taskplan
luci-app-ttyd
luci-app-unblockmusic
luci-app-usb-printer
luci-app-wolplus
openssh-sftp-server
open-vm-tools

包含几乎所有（除了去掉几个存在冲突之外）的网络、USB驱动。

