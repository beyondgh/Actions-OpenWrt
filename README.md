<h1>基于github actions编译的immortalwrt(24.10)x86-64固件。</h1>
<h3>来源于<a href='https://github.com/P3TERX/Actions-OpenWrt' target='_blank'>P3TERX</a>， 同时参考、移植了<a href='https://github.com/haiibo/OpenWrt' target='_blank'>Haiibo</a> 的代码过来，解决了编译时空间不够问题。</h3>
<strong>集成几个主要科学插件（homeproxy、niki、nekobox、openclash、passwall、passwall2、ssr-plus）</strong>
<div>默认编译的是x86-64固件，集成的插件如下：</div>
luci-app-accesscontrol-plus<br/>
luci-app-adguardhome<br/>
luci-app-advancedplus <br/>
luci-app-appfilter<br/>
luci-app-attendedsysupgrade<br/>
luci-app-autoreboot<br/>
luci-app-chatgpt-web<br/>
luci-app-diskman<br/>
luci-app-dockerman<br/>
luci-app-eqosplus<br/>
luci-app-filebrowser-go<br/>
luci-app-gecoosac<br/>
luci-app-homeproxy<br/>
luci-app-iptvhelper<br/>
luci-app-mosdns<br/>
luci-app-nekobox<br/>
luci-app-netdata<br/>
luci-app-netspeedtest<br/>
luci-app-netwizard<br/>
luci-app-niki<br/>
luci-app-nlbwmon<br/>
luci-app-onliner<br/>
luci-app-openclash<br/>
luci-app-p910nd<br/>
luci-app-partexp<br/>
luci-app-passwall<br/>
luci-app-passwall2<br/>
luci-app-poweroffdevice<br/>
luci-app-ramfree<br/>
luci-app-samba4<br/>
luci-app-ssr-plus<br/>
luci-app-istore<br/>
luci-app-taskplan<br/>
luci-app-ttyd<br/>
luci-app-unblockmusic<br/>
luci-app-usb-printer<br/>
luci-app-wolplus<br/>
openssh-sftp-server<br/>
open-vm-tools<br/>

<h2>包含几乎所有（除了去掉几个存在冲突之外）的网络、USB驱动。</h2>

<h4>默认后台地址：192.168.50.6  密码为空</h4>

<div>默认固件大小设置为4G（4096M，可在.github/workflows/immortalwrt-builder.yml里搜索4096修改)，其它配置可在diy-part1.sh、diy-part2.sh进行修改。修改编译默认配置文件.config内容为你的，feeds.conf.default则为相应分支的默认feeds，可修改成你需要的。</div>
