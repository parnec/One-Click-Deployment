
echo 'Set up VPN'
sleep 3

# echo 'Generate key-pub'
# ssh-keygen
# cat ~/.ssh/id_rsa.pub

ssh root@45.77.130.85

echo 'Install VPN'
sleep 3
bash ../../VPN/ss.sh

echo 'Add bbr'
sleep 3
chmod +x ../../VPN/bbr.sh
bash ../../VPN/bbr.sh
# reboot

echo 'Restart shadowsocks'
sleep 3
reboot

ssh root@45.77.130.85
nohup ssserver -c /etc/shadowsocks.json &


