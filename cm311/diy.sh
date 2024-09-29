#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.10.99/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall

# Add packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/openwrt-passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
