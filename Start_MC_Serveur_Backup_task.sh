#!/bin/bash
# les backup

dat=$(date)

sudo mkdir /home/Backup/"$dat"
sudo cp /home/My_user/MY_server /home/Backup/"$dat"

# le démarage du serveur

java -Xms1024M -Xmx1024M -jar server.jar nogui



