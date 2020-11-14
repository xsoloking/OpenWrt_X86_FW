# Update feeds
sed -i 's/^#//g' feeds.conf.default
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default

# Change default IP
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# Copy .config to openwrt
cp ../.config .config
