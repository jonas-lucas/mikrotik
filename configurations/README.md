# Configurations

## DHCP Server

A basic setup of DHCP Server.

```rsc
/ip address add address=192.168.1.1/24 interface=ether1

/ip pool add name=dhcp_pool ranges=192.168.1.100-192.168.1.200

/ip dhcp-server add name=dhcp interface=ether1 address-pool=dhcp_pool disabled=no

/ip dhcp-server network add address=192.168.1.0/24 gateway=192.168.1.1
```

1. Add an **IP Address** to an interface.
2. Create a **DHCP Pool** object with the IP range.
3. Create a **DHCP Server** with the interface and the DHCP Pool object.
4. Define network scope like: **default gateway** and **DNS servers**.


