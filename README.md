<h1>基于github actions编译的immortalwrt(24.10)x86-64固件。</h1>
<h3>来源于<a href='https://github.com/P3TERX/Actions-OpenWrt' target='_blank'>P3TERX</a>， 同时参考、移植了<a href='https://github.com/haiibo/OpenWrt' target='_blank'>Haiibo</a> 的代码过来，解决了编译时空间不够问题。</h3>
<br/>
<h4>默认后台地址：192.168.50.9（或 192.168.1.1）  密码为空或password</h4>
<br/>
<div>默认固件大小设置为4G（4096M，可在.github/workflows/immortalwrt-builder.yml里搜索4096修改)，其它配置可在diy-part1.sh、diy-part2.sh进行修改。修改编译默认配置文件.config内容为你的，feeds.conf.default则为相应分支的默认feeds，可修改成你需要的。</div>
<br/>
<div>此项目主要是解决了集成多插件后于github actions编译时空间存储不够的问题，至于需要多少插件及驱动全凭你自己自由决择。但切记不可引入太多软件包的第三方仓库，否则过多的软件包的话会导致编译时长超过github限制的6小时而自动被github ban掉。正确的做法是一个个的引入第三方相应的包或仓库，又或者是精简后（不存在过多多余的包）的仓库。如果是需要引入过多包的仓库（例如samll-package），在feed或clone后将不需要的包进行删除后再进行编译，只要不是选择了太多的插件包，基本不会超过限制的6小时。以下说明作废，本项目主要目的是解决了编译时空间不够的问题，也是在解决了基本问题后，需要什么插件就任君选择了，所以以下原来的说明作废。</div>
<br/>
<strong><del>集成几个主要科学插件（homeproxy、niki、nekobox、openclash、passwall、passwall2、ssr-plus）</del></strong>
<div><del>默认编译的是x86-64固件，集成的插件如下：</del></div>
<p><del>luci-app-accesscontrol-plus</del></p>
<p><del>luci-app-adguardhome</del></p>
<p><del>luci-app-advancedplus </del></p>
<p><del>luci-app-appfilter</del></p>
<p><del>luci-app-attendedsysupgrade</del></p>
<p><del>luci-app-autoreboot</del></p>
<p><del>luci-app-chatgpt-web</del></p>
<p><del>luci-app-diskman</del></p>
<p><del>luci-app-dockerman</del></p>
<p><del>luci-app-eqosplus</del></p>
<p><del>luci-app-filebrowser-go</del></p>
<p><del>luci-app-gecoosac</del></p>
<p><del>luci-app-homeproxy</del></p>
<p><del>luci-app-iptvhelper</del></p>
<p><del>luci-app-mosdns</del></p>
<p><del>luci-app-nekobox</del></p>
<p><del>luci-app-netdata</del></p>
<p><del>luci-app-netspeedtest</del></p>
<p><del>luci-app-netwizard</del></p>
<p><del>luci-app-niki</del></p>
<p><del>luci-app-nlbwmon</del></p>
<p><del>luci-app-onliner</del></p>
<p><del>luci-app-openclash</del></p>
<p><del>luci-app-p910nd</del></p>
<p><del>luci-app-partexp</del></p>
<p><del>luci-app-passwall</del></p>
<p><del>luci-app-passwall2</del></p>
<p><del>luci-app-poweroffdevice</del></p>
<p><del>luci-app-ramfree</del></p>
<p><del>luci-app-samba4</del></p>
<p><del>luci-app-ssr-plus</del></p>
<p><del>luci-app-istore</del></p>
<p><del>luci-app-taskplan</del></p>
<p><del>luci-app-ttyd</del></p>
<p><del>luci-app-unblockmusic</del></p>
<p><del>luci-app-usb-printer</del></p>
<p><del>luci-app-wolplus</del></p>
<p><del>openssh-sftp-server</del></p>
<p><del>open-vm-tools</del></p>

<h2><del>包含几乎所有（除了去掉几个存在冲突之外）的网络、USB驱动。</h2>~~

