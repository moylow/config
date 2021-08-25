#!/bin/bash
POOL=ap.luckpool.net:3956#xnsub
WALLET=RLdULZVp6iH6hooAfM8pFMYD3dWXh9bvwE
WORKER=rig01
DIFF=x

sudo apt update
sudo apt install screen -y
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
./hellminer -c $POOL -u $WALLET.$WORKER -p $DIFF --cpu 4
while [ 1 ]; do
sleep 3
done
sleep 999
