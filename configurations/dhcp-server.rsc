# Basic setup of a DHCP Server

/ip address add address=192.168.1.1/24 interface=ether1

/ip pool add name=dhcp_pool ranges=192.168.1.100-192.168.1.110

/ip dhcp-server add name=dhcp interface=ether1 address-pool=dhcp_pool disabled=no

/ip dhcp-server network add address=192.168.1.0/24 gateway=192.168.1.1