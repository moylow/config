#!/bin/bash
WALLET=
WORKER=
PASSWORD=

wget https://github.com/NebuTech/NBMiner/releases/download/v38.1/NBMiner_38.1_Linux.tgz
tar -xvf NBMiner_38.1_Linux.tgz
cd NBMiner_Linux
./nbminer -a ergo -o stratum+tcp://autolykos.eu-west.nicehash.com:3390 --user $WALLET.$WORKER -p $PASSWORD
