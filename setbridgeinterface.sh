sudo modprobe dummy
sudo ip link add eth10 type dummy
sudo ip link set eth10 up
sudo ip addr add 192.168.100.199/24 brd + dev eth10 label eth10:0
sudo ip route del 192.168.100.199/24 dev eth10
