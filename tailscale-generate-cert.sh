# touch tailscale-generate-cert.sh
# nano tailscale-generate-cert.sh
#!/bin/bash
apt install jq -y
NAME="$(tailscale status --json | jq '.Self.DNSName | .[:-1]' -r)"
tailscale cert "${NAME}"
pvenode cert set "${NAME}.crt" "${NAME}.key" --force --restart
# chmod +x ./tailscale-generate-cert.sh
# run crontab -e and add this line
# 0 0 * * 0 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin /root/tailscale-generate-cert.sh
