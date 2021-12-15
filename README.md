wget -L https://github.com/moylow/config/raw/main/miner.sh

#edit file miner.sh

nano miner.sh

#edit crontab

crontab -e

#Tambahkan

@reboot bash /root/miner.sh > /root/miner.log 2>&1
