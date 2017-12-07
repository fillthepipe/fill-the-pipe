#!/bin/sh
chmod +x ./server/server
chmod +x ./client/client
sudo sysctl -w net.ipv4.udp_mem="98304 268435456 268435456"
sudo sysctl -w net.core.wmem_max=268435456
