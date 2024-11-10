# crontab -e
crontab -l|sed "\$a0 0 * * 0 tailscale serve -bg https+insecure://localhost:8006"|crontab -