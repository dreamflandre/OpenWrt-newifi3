#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#修改主题，去除用户防火墙规则
sed -i '/luci.main.lang/a uci set luci.main.mediaurlbase=/luci-static/argon' package/lean/default-settings/files/zzz-default-settings
sed -i '/luci.main.lang/a uci set luci.themes.Argon=/luci-static/argon' package/lean/default-settings/files/zzz-default-settings
sed -i '/firewall.user/d' package/lean/default-settings/files/zzz-default-settings
echo 'sh /etc/firstboot.sh' >> package/lean/default-settings/files/zzz-default-settings
