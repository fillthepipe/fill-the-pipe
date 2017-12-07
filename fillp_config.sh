#!/bin/sh
chmod +x ./server/server
chmod +x ./client/client
sysctl -w net.ipv4.udp_mem="98304 268435456 268435456"
sysctl -w net.core.wmem_max=268435456
