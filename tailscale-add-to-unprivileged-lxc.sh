# add the following to the lxc.conf file at /etc/pve/lxc/100.conf for example
lxc.cgroup2.devices.allow: c 10:200 rwm
lxc.mount.entry: /dev/net/tun dev/net/tun none bind,create=file
# then run this in the lxc
curl -fsSL https://tailscale.com/install.sh | sh