sysctl -w net.ipv4.udp_mem="98304 62914560 62914560"
sysctl -w net.core.rmem_default=62914560
sysctl -w net.core.wmem_default=62914560
sysctl -w net.core.rmem_max=62914560
sysctl -w net.core.wmem_max=62914560
sysctl -w net.ipv4.udp_rmem_min=62914560
sysctl -w net.ipv4.udp_wmem_min=62914560
