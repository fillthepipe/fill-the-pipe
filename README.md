# FillP

FillP is a light-weight transport protocol for massive data transmisson, aiming at improving the transfer performance by filling up the pipe while maintaining reliability and eficiency.

Instead of using the raw socket interface,we implement FillP atop UDP in the transport layer which does not need root privilege to be installed and changes to the existing applications.

## 0. Clone and Setup

    git clone https://github.com/fillthepipe/fill-the-pipe.git

    cd client   or    cd server

    export LD_LIBRARY_PATH=./  (this should be done on both server and client)

## 1. Buffer Configuration

The client and server are executable which are built in Ubuntu 14.04.5 LTS with gcc 4.8.4, and do not need to be built again. Befor running FillP, You can configure your system as follows: 

    sysclt -w net.ipv4.udp_mem="98304 62914560 62914560"

    sysclt -w net.core.rmem_default=62914560

    sysclt -w net.core.wmem_default=62914560

    sysclt -w net.core.rmem_max=62914560

    sysclt -w net.core.wmem_max=62914560

    sysclt -w net.ipv4.udp_rmem_min=62914560

    sysclt -w net.ipv4.udp_wmem_min=62914560

## 2. Transfer Data Stream

    ./server -s server_ip -p server_port -t

    ./client -d server_ip -p server_port -t

## 3. Transfer File

    ./server -s server_ip -p server_port -t -f recv_file_name

    ./client -d server_ip -p server_port -t -f send_file_name

## Notes:

1). The recv_file_name can be set any, its purpose is to store the received data in the file; the send_file_name should exist, which is the file to be sent.  
2). The data stream are all from client to server,if you need to distributed data from server to client, add the -m option after all commands. Meanwhile pay attention to the parameter after -f while transfer files.  
3). Check rtt: search rtt in client_log.txt on client side.  
4). Check retransmission packets: search Retransmit in client_log.txt on client side,the number after ‘Retransmit’ means the retransmission times. 
    
