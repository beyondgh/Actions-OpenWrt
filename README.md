<h1>基于github actions编译的immortalwrt(24.10)x86-64固件。</h1>
<h3>来源于<a href='https://github.com/P3TERX/Actions-OpenWrt' target='_blank'>P3TERX</a>， 同时参考、移植了<a href='https://github.com/haiibo/OpenWrt' target='_blank'>Haiibo</a> 的代码过来，解决了编译时空间不够问题。</h3>
<br/>
<h4>默认后台地址：192.168.50.9  密码为空</h4>
<br/>
<div>默认固件大小设置为4G（4096M，可在.github/workflows/immortalwrt-builder.yml里搜索4096修改)，其它配置可在diy-part1.sh、diy-part2.sh进行修改。修改编译默认配置文件.config内容为你的，feeds.conf.default则为相应分支的默认feeds，可修改成你需要的。</div>
<br/>
<div>此项目主要是解决了集成多插件后于github actions编译时空间存储不够的问题，至于需要多少插件及驱动全凭你自己自由决择。但切记不可引入太多软件包的第三方仓库，否则过多的软件包的话会导致编译时长超过github限制的6小时而自动被github ban掉。正确的做法是一个个的引入第三方相应的包或仓库，又或者是精简后（不存在过多多余的包）的仓库。如果是需要引入过多包的仓库（例如samll-package），在feed或clone后将不需要的包进行删除后再进行编译，只要不是选择了太多的插件包，基本不会超过限制的6小时。以下说明作废，本项目主要目的是解决了编译时空间不够的问题，也是在解决了基本问题后，需要什么插件就任君选择了，所以以下原来的说明作废。</div>
<br/>
<strong class='text-decoration:line-through;'>~~集成几个主要科学插件（homeproxy、niki、nekobox、openclash、passwall、passwall2、ssr-plus）~~</strong>
<div class='text-decoration:line-through;'>默认编译的是x86-64固件，集成的插件如下：</div>
<p class='text-decoration:line-through;'>luci-app-accesscontrol-plus</p>
<p class='text-decoration:line-through;'>luci-app-adguardhome</p>
<p class='text-decoration:line-through;'>luci-app-advancedplus </p>
<p class='text-decoration:line-through;'>luci-app-appfilter</p>
<p class='text-decoration:line-through;'>luci-app-attendedsysupgrade</p>
<p class='text-decoration:line-through;'>luci-app-autoreboot</p>
<p class='text-decoration:line-through;'>luci-app-chatgpt-web</p>
<p class='text-decoration:line-through;'>luci-app-diskman</p>
<p class='text-decoration:line-through;'>luci-app-dockerman</p>
<p class='text-decoration:line-through;'>luci-app-eqosplus</p>
<p class='text-decoration:line-through;'>luci-app-filebrowser-go</p>
<p class='text-decoration:line-through;'>luci-app-gecoosac</p>
<p class='text-decoration:line-through;'>luci-app-homeproxy</p>
<p class='text-decoration:line-through;'>luci-app-iptvhelper</p>
<p class='text-decoration:line-through;'>luci-app-mosdns</p>
<p class='text-decoration:line-through;'>luci-app-nekobox</p>
<p class='text-decoration:line-through;'>luci-app-netdata</p>
<p class='text-decoration:line-through;'>luci-app-netspeedtest</p>
<p class='text-decoration:line-through;'>luci-app-netwizard</p>
<p class='text-decoration:line-through;'>luci-app-niki</p>
<p class='text-decoration:line-through;'>luci-app-nlbwmon</p>
<p class='text-decoration:line-through;'>luci-app-onliner</p>
<p class='text-decoration:line-through;'>luci-app-openclash</p>
<p class='text-decoration:line-through;'>luci-app-p910nd</p>
<p class='text-decoration:line-through;'>luci-app-partexp</p>
<p class='text-decoration:line-through;'>luci-app-passwall</p>
<p class='text-decoration:line-through;'>luci-app-passwall2</p>
<p class='text-decoration:line-through;'>luci-app-poweroffdevice</p>
<p class='text-decoration:line-through;'>luci-app-ramfree</p>
<p class='text-decoration:line-through;'>luci-app-samba4</p>
<p class='text-decoration:line-through;'>luci-app-ssr-plus</p>
<p class='text-decoration:line-through;'>luci-app-istore</p>
<p class='text-decoration:line-through;'>luci-app-taskplan</p>
<p class='text-decoration:line-through;'>luci-app-ttyd</p>
<p class='text-decoration:line-through;'>luci-app-unblockmusic</p>
<p class='text-decoration:line-through;'>luci-app-usb-printer</p>
<p class='text-decoration:line-through;'>luci-app-wolplus</p>
<p class='text-decoration:line-through;'>openssh-sftp-server</p>
<p class='text-decoration:line-through;'>open-vm-tools</p>

<h2 class='text-decoration:line-through;'>包含几乎所有（除了去掉几个存在冲突之外）的网络、USB驱动。</h2>~~

