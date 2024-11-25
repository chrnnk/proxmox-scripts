apt install lm-sensors htop nvtop powertop intel-gpu-tools libgl1 libegl1 -y
crontab -l|sed "\$a0 0 * * 0 /usr/sbin/powertop --auto-tune"|crontab -
