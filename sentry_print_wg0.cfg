#!/bin/bash
  if [ ! -e /etc/wireguard/wg0.conf ]
    then
        cd /etc/wireguard/
        privkey=`cat privatekey`
        printf '%s\n' " Enter the validator publickey or enter some random string and change it later. "
        read validator_pubkey
        printf '%s\n' " Enter the validator endpoint ip ... the public ip of the node, not 10.xxxx "
        read validator_ip
        printf "%s\n\n\n" " --------------------------------------------------------------------------------"
        printf "%s\n\n\n" "Printing wireguard config: "
        printf "%s\n\n\n"
    
    
        
        printf '%s\n' "[Interface]" >> /etc/wireguard/wg0.conf 
        printf '%s\n' "Address = 10.0.0.1/32" >> /etc/wireguard/wg0.conf
        printf '%s\n' "SaveConfig = true" >> /etc/wireguard/wg0.conf
        printf '%s\n' "ListenPort = 51820" >> /etc/wireguard/wg0.conf
        printf '%s\n' "PrivateKey = ${privkey}" >> /etc/wireguard/wg0.conf
        printf '%s\n' "" >> /etc/wireguard/wg0.conf
        printf '%s\n' "PublicKey = ${validator_pubkey}" >> /etc/wireguard/wg0.conf
        printf '%s\n' "AllowedIPs = 10.0.0.2/32" >> /etc/wireguard/wg0.conf
        printf '%s\n' "Endpoint = ${validator_ip}:51820" >> /etc/wireguard/wg0.conf
        #printf '%s\n' "PersistentKeepAlive = 2" >>
  fi
