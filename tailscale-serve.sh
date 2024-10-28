# crontab -e
0 0 * * 0 tailscale serve -bg https+insecure://localhost:8006
