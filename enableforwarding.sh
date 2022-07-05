iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X

sudo sysctl net.ipv4.ip_forward=1
iptables -t nat -A PREROUTING -d 192.168.100.199 -j DNAT --to-destination 172.17.0.2
iptables -t nat -A POSTROUTING -j MASQUERADE
#sudo iptables -A FORWARD -o wlan0 -i eth10:0 -j ACCEPT 
#sudo iptables -A FORWARD -i wlan0 -o eth10:0 -m state --state ESTABLISHED,RELATED -j ACCEPT 
#sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
