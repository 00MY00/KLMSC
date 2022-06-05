#!/bin/bash
#	Crée par Kuroakashiro 
VERSION=7										# Version du scripte
Green=$(echo -e "\033[32m")						# Colors
Maganta=$(echo -e "\033[35m")					# Colors
Orange=$(echo -e "\033[33m")					# Colors
Cyan=$(echo -e "\033[36m")						# Colors
Rouge=$(echo -e "\033[31m")						# Colors
Noir=$(echo -e "\033[30m")						# Colors
Blanc=$(echo -e "\033[37m") 					# colors
Vide=$(echo -e "\033[00m")						# Colors
Vert=$(echo -e "\033[32m")						# Colors
title="Kuroakashiro's Linux Minecraft server creator"
												# Titre de du terminale
echo -e "\033]2;$title\007" 					# Permet de déffinire le titre de la page
[ -f "/home/$USER/MAJ.sh" ] && sudo rm -f /home/$USER/MAJ.sh
#-------------------------------------------------------

RoseDeFeu()										# Easter egg
{
clear
echo -e "\n\n"
echo -e "$Orange         .     ."
echo -e "$Orange    ...  :''..':"
echo -e "$Orange     : ''''.'   :''::'"
echo -e "$Orange   ..:..  :     .'' :"
echo -e "$Rouge''.    ':    .'     :"
echo -e "$Rouge    :    :   :        :"
echo -e "$Rouge     :   :   :         :"
echo -e "$Rouge     :    :   :        :"
echo -e "      :    :   :..\033[32m''''''::."
echo -e "       : ...:..'     .''"
echo -e "       .'   .'  .::::'"
echo -e "      :..''''':::::::"
echo -e "      '         '::::"
echo -e "                  '::."
echo -e "                   '::"
echo -e "                    :::."
echo -e "         ..:.:.::''. ::''.  . : : ."
echo -e "       ..'      ':.: ::   :'       .:"
echo -e "      .:        .:'':::  :       .: ::"
echo -e "      .:    ..''     :::.'    :':    :"
echo -e "       : .''         .:: : : '"
echo -e "        :          .''::"
echo -e "                      ::"
echo -e "                      ::"
echo -e "                      ::"
echo -e "                      ::"
echo -e "                      ::"
echo -e "                      ::\033[00m"
sleep 3
}

Rinitialisation_properties()					# Permet de rinisialiser les properties
{
sudo rm -f "server.properties"
echo -e "\033[32m[OK]	Commande réusit\033[00m"
echo "#Minecraft server properties" >> "server.properties"
echo "#Sun May 08 20:51:19 CEST 2022" >> "server.properties"
echo "enable-jmx-monitoring=false" >> "server.properties"
echo "rcon.port=25575" >> "server.properties"
echo "level-seed=944710140" >> "server.properties"
echo "gamemode=creatif" >> "server.properties"
echo "enable-command-block=false" >> "server.properties"
echo "enable-query=false" >> "server.properties"
echo "generator-settings={}" >> "server.properties"
echo "level-name=world" >> "server.properties"
echo "motd=A Minecraft Server" >> "server.properties"
echo "query.port=25565" >> "server.properties"
echo "pvp=true" >> "server.properties"
echo "generate-structures=true" >> "server.properties"
echo "difficulty=easy" >> "server.properties"
echo "network-compression-threshold=256" >> "server.properties"
echo "require-resource-pack=false" >> "server.properties"
echo "max-tick-time=60000" >> "server.properties"
echo "use-native-transport=true" >> "server.properties"
echo "max-players=20" >> "server.properties"
echo "online-mode=true" >> "server.properties"
echo "enable-status=true" >> "server.properties"
echo "allow-flight=false" >> "server.properties"
echo "broadcast-rcon-to-ops=true" >> "server.properties"
echo "view-distance=10" >> "server.properties"
echo "server-ip=" >> "server.properties"
echo "resource-pack-prompt=" >> "server.properties"
echo "allow-nether=true" >> "server.properties"
echo "server-port=25565" >> "server.properties"
echo "enable-rcon=false" >> "server.properties"
echo "sync-chunk-writes=true" >> "server.properties"
echo "op-permission-level=4" >> "server.properties"
echo "prevent-proxy-connections=false" >> "server.properties"
echo "hide-online-players=false" >> "server.properties"
echo "resource-pack=" >> "server.properties"
echo "entity-broadcast-range-percentage=100" >> "server.properties"
echo "simulation-distance=10" >> "server.properties"
echo "rcon.password=" >> "server.properties"
echo "player-idle-timeout=0" >> "server.properties"
echo "force-gamemode=false" >> "server.properties"
echo "rate-limit=0" >> "server.properties"
echo "hardcore=false" >> "server.properties"
echo "white-list=false" >> "server.properties"
echo "broadcast-console-to-ops=true" >> "server.properties"
echo "spawn-npcs=true" >> "server.properties"
echo "spawn-animals=true" >> "server.properties"
echo "function-permission-level=2" >> "server.properties"
echo "level-type=default" >> "server.properties"
echo "text-filtering-config=" >> "server.properties"
echo "spawn-monsters=true" >> "server.properties"
echo "enforce-whitelist=false" >> "server.properties"
echo "resource-pack-sha1=" >> "server.properties"
echo "spawn-protection=16" >> "server.properties"
echo "max-world-size=29999984" >> "server.properties"
# ---------------------------------
}



startt()										# Main fonction programe
{
clear
echo -e "Lancement des verification de fichier\n\n"
sleep 3
sudo apt updatex
Errorlevel=$?							# Errorlevel dans une variale
if [ "$Errorlevel" = "0" ];				# Errorlevel
then
	echo -e "\033[32m[OK] Operation réusi\033[00m"
	
elif [ "$Errorlevel" = "100" ];
then
	sudo apt-get install ppa-purge
	x=$?
	if [ "$x" = "0" ];
	then
		echo -e "\033[32m[OK] Operation réusi\033[00m"
		sudo add-apt-repository --remove ppa:jonathonf/ffmpeg-4
		sudo apt update
		sudo apt upgrade
	fi

elif [ "$Errorlevel" != "0" ];
then
	echo -e "\033[31mUne erreur est survenu !\033[00m"
fi

#-----------------------------------------------------------------------

echo -e "Installation java"
sudo apt install default-jre	# instalation paquet java
Errorlevel=$?							# Errorlevel dans une variale
if [ "$Errorlevel" = "0" ];				# Errorlevel
then
	echo -e "\033[32m[OK] Operation réusi Java est instaler\033[00m"
elif [ "$Errorlevel" = "6" ];
then
	echo -e "\033[31mL'accès a été refusé ! \033[00m"
elif [ "$Errorlevel" != "0" ];
then
	echo -e "\033[31mUne erreur est survenu !\033[00m"
fi


#-----------------------------------------------------------------------

echo -e "Installation ajout de java"
sudo apt install openjdk-17-jdk	# packet nécecaire a java pour les versions de MC
Errorlevel=$?							# Errorlevel dans une variale
if [ "$Errorlevel" = "0" ];				# Errorlevel
then
	echo -e "\033[32m[OK] Operation réusi packet pour java instaler\033[00m"
elif [ "$Errorlevel" = "6" ];
then
	echo -e "\033[31mL'accès a été refusé ! \033[00m"
elif [ "$Errorlevel" != "0" ];
then
	echo -e "\033[31mUne erreur est survenu !\033[00m"
fi
#-----------------------------------------------------------------------
	
echo -e "Installation de Screen"
sudo apt install screen	# instalation paquet screen pour plusieur session de serveur
Errorlevel=$?							# Errorlevel dans une variale
if [ "$Errorlevel" = "0" ];				# Errorlevel
then
	echo -e "\033[32m[OK] Operation réusi Screen est instaler\033[00m"
elif [ "$Errorlevel" = "6" ];
then
	echo -e "\033[31mL'accès a été refusé ! \033[00m"
elif [ "$Errorlevel" != "0" ];
then
	echo -e "\033[31mUne erreur est survenu !\033[00m"
fi

#-----------------------------------------------------------------------

echo -e "Ouverture du port de jeu"
sudo ufw allow 25565	# ouverture du port pour le fierwall
Errorlevel=$?							# Errorlevel dans une variale
if [ "$Errorlevel" = "0" ];				# Errorlevel
then
	echo -e "\033[32m[OK] Operation réusi Pourt ouvert\033[00m"
elif [ "$Errorlevel" = "6" ];
then
	echo -e "\033[31mL'accès a été refusé ! \033[00m"
elif [ "$Errorlevel" != "0" ];
then
	echo -e "\033[31mUne erreur est survenu !\033[00m"
fi

#----------------------------------------------------------------------

while ((i<1));
do
	clear
	echo -e "\n\n"
	echo -e "\033[04mChoisicez votre version de serveur !\033[00m\n\n"
	
	echo -e "\nListe des serveur déja existant"
	echo -e "\033[36mAttention les nouvelle version ecrase les autre version\033[00m"
	echo -e "\033[35m--------------------------\033[32m"
	ls /home/$USER | grep "Minecraft-"
	echo -e "\033[35m--------------------------\033[00m\n"
	
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.18\033[00m\n	\033[32m1\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.17\033[00m\n	\033[32m2\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.16\033[00m\n	\033[32m3\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.15\033[00m\n	\033[32m4\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.14\033[00m\n	\033[32m5\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.13\033[00m\n	\033[32m6\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.12\033[00m\n	\033[32m7\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.11\033[00m\n	\033[32m8\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.10\033[00m\n	\033[32m9\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.9\033[00m\n	\033[32m10\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.8\033[00m\n	\033[32m11\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.7\033[00m\n	\033[32m12\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.6\033[00m\n	\033[32m13\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.5\033[00m\n	\033[32m14\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.4\033[00m\n	\033[32m15\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.3\033[00m\n	\033[32m16\n\033[36m--------------------\033[00m"
echo -e "\033[33m\033[10mServeur verssion : \033[35m\033[04m1.2\033[00m\n	\033[32m17\n\033[36m--------------------\033[00m"



read -p ": " VersionServer


if [ "$VersionServer" -eq "1" ];
then
	
	[ -d "/home/$USER/Minecraft-1.18.2" ] && sudo rm -rf "/home/$USER/Minecraft-1.18.2"
	mkdir /home/$USER/Minecraft-1.18.2
	cd /home/$USER/Minecraft-1.18.2
	clear
	echo -e "server 1.18.2"
	wget https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.18.2"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------


elif [ "$VersionServer" -eq "2" ];
then
	[ -d "/home/$USER/Minecraft-1.17" ] && sudo rm -rf "/home/$USER/Minecraft-1.17"
	mkdir /home/$USER/Minecraft-1.17
	cd /home/$USER/Minecraft-1.17
	clear
	echo -e "1.17"
	wget https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.17"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "3" ];
then
	[ -d "/home/$USER/Minecraft-1.16" ] && sudo rm -rf "/home/$USER/Minecraft-1.16"
	mkdir /home/$USER/Minecraft-1.16
	cd /home/$USER/Minecraft-1.16
	clear
	echo -e "1.16"
	wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.16"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "4" ];
then
	[ -d "/home/$USER/Minecraft-1.15" ] && sudo rm -rf "/home/$USER/Minecraft-1.15"
	mkdir /home/$USER/Minecraft-1.15
	cd /home/$USER/Minecraft-1.15
	clear
	echo -e "1.15"
	wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.15"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "5" ];
then
	[ -d "/home/$USER/Minecraft-1.14" ] && sudo rm -rf "/home/$USER/Minecraft-1.14"
	mkdir /home/$USER/Minecraft-1.14
	cd /home/$USER/Minecraft-1.14
	clear
	echo -e "1.14"
	wget https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.14"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "6" ];
then
	[ -d "/home/$USER/Minecraft-1.13" ] && sudo rm -rf "/home/$USER/Minecraft-1.13"
	mkdir /home/$USER/Minecraft-1.13
	cd /home/$USER/Minecraft-1.13
	clear
	echo -e "1.13"
	wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.13"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "7" ];
then
	[ -d "/home/$USER/Minecraft-1.12" ] && sudo rm -rf "/home/$USER/Minecraft-1.12"
	mkdir /home/$USER/Minecraft-1.12
	cd /home/$USER/Minecraft-1.12
	clear
	echo -e "1.12"
	wget https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.12"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "8" ];
then
	[ -d "/home/$USER/Minecraft-1.11" ] && sudo rm -rf "/home/$USER/Minecraft-1.11"
	mkdir /home/$USER/Minecraft-1.11
	cd /home/$USER/Minecraft-1.11
	clear
	echo -e "1.11"
	wget https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.11"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "9" ];
then
	[ -d "/home/$USER/Minecraft-1.10" ] && sudo rm -rf "/home/$USER/Minecraft-1.10"
	mkdir /home/$USER/Minecraft-1.10
	cd /home/$USER/Minecraft-1.10
	clear
	echo -e "1.10"
	wget https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.10"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "10" ];
then
	[ -d "/home/$USER/Minecraft-1.9" ] && sudo rm -rf "/home/$USER/Minecraft-1.9"
	mkdir /home/$USER/Minecraft-1.9
	cd /home/$USER/Minecraft-1.9
	clear
	echo -e "1.9"
	wget https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.9"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "11" ];
then
	[ -d "/home/$USER/Minecraft-1.8" ] && sudo rm -rf "/home/$USER/Minecraft-1.8"
	mkdir /home/$USER/Minecraft-1.8
	cd /home/$USER/Minecraft-1.8
	clear
	echo -e "1.8"
	wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	java -Xms1024M -Xmx1024M -jar server.jar nogui 	# Démarage de première fois
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi le serveur est crée\033[00m"
		
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.8"

	while ((j<1));
	do
		clear
		echo -e "\n\nAccepter la EULA !\n[\033[32my\033[00m]	Pour oui\n[\033[31mn\033[00m]	Pour tous annuler !\n\n"
		
		read -p ": " eula					# accepter la eula
		
		if [ "$eula" = "y" ];
		then
			echo -e "Vous avez accépter la eula !"
			sed -i "s/eula=false/eula=true/" "eula.txt"
			echo #!/bin/bash > Start_MC_Serveur.sh
			echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
			echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
			sudo chmod +rwx Start_MC_Serveur.sh
			# ---------------------------------
			Rinitialisation_properties
			# ---------------------------------
			echo -e "Entrée dans le terminale [ sh -x Start_MC_Serveur ] pour démarer le server"
			sleep 10
			break
			
		elif [ "$eula" = "n" ];
		then
			echo -e "C'est reffuser supresion complaite"
			cd /home/$USER/$x
			sudo rm -rf "/home/$USER/$x"
			break
			
		fi
	done

# 		---------------------------------------



elif [ "$VersionServer" -eq "12" ];
then
	[ -d "/home/$USER/Minecraft-1.7" ] && sudo rm -rf "/home/$USER/Minecraft-1.7"
	mkdir /home/$USER/Minecraft-1.7
	cd /home/$USER/Minecraft-1.9
	clear
	echo -e "1.7"
	wget https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10

# 		---------------------------------------



elif [ "$VersionServer" -eq "13" ];
then
	[ -d "/home/$USER/Minecraft-1.6" ] && sudo rm -rf "/home/$USER/Minecraft-1.6"
	mkdir /home/$USER/Minecraft-1.6
	cd /home/$USER/Minecraft-1.9
	clear
	echo -e "1.6"
	wget https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10

# 		---------------------------------------



elif [ "$VersionServer" -eq "14" ];
then
	[ -d "/home/$USER/Minecraft-1.5" ] && sudo rm -rf "/home/$USER/Minecraft-1.5"
	mkdir /home/$USER/Minecraft-1.5
	cd /home/$USER/Minecraft-1.5
	clear
	echo -e "1.5"
	wget https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10

# 		---------------------------------------



elif [ "$VersionServer" -eq "15" ];
then
	[ -d "/home/$USER/Minecraft-1.4" ] && sudo rm -rf "/home/$USER/Minecraft-1.4"
	mkdir /home/$USER/Minecraft-1.4
	cd /home/$USER/Minecraft-1.4
	clear
	echo -e "1.4"
	wget https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	echo -e "lancement du server"
	
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10

# 		---------------------------------------


elif [ "$VersionServer" -eq "16" ];
then
	[ -d "/home/$USER/Minecraft-1.3" ] && sudo rm -rf "/home/$USER/Minecraft-1.3"
	mkdir /home/$USER/Minecraft-1.3
	cd /home/$USER/Minecraft-1.3
	clear
	echo -e "1.3"
	wget https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10

# 		---------------------------------------



elif [ "$VersionServer" -eq "17" ];
then
	[ -d "/home/$USER/Minecraft-1.2" ] && sudo rm -rf "/home/$USER/Minecraft-1.2"
	mkdir /home/$USER/Minecraft-1.2
	cd /home/$USER/Minecraft-1.2
	clear
	echo -e "1.2"
	wget https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar
	Errorlevel=$?							# Errorlevel dans une variale
	if [ "$Errorlevel" = "0" ];				# Errorlevel
	then
		echo -e "\033[32m[OK] Operation réusi instalation fini\033[00m"
	elif [ "$Errorlevel" = "6" ];
	then
		echo -e "\033[31mL'accès a été refusé ! \033[00m"
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mUne erreur est survenu !\033[00m"
	fi
	
	x="Minecraft-1.2"
	
	echo #!/bin/bash > Start_MC_Serveur.sh
	echo echo -e "\033[33mDémarage du serveur $x \033[32m" >> Start_MC_Serveur.sh
	echo java -Xms1024M -Xmx1024M -jar server.jar nogui >> Start_MC_Serveur.sh
	sudo chmod +rwx Start_MC_Serveur.sh
	# ---------------------------------
			Rinitialisation_properties
	# ---------------------------------
	echo -e "\033[36mEntrée dans le terminale [ \033[32msh -x /home/$USER/$x/Start_MC_Serveur\033[36m ] pour démarer le server\033[00m"
	sleep 10
	

# 		---------------------------------------

elif [ "$VersionServer" = "exit" ];
then
	break

fi

done




	
}


ServeurProperties()								# Properties serveur 
{
while ((i<1));
do	
	cd /home/$USER/
	sudo chmod +rwx server.properties
	clear
	echo -e "\n\n\033[33mListe des repertoire de server MC\nEntrez le nom du repertoire\033[32m\n"
	ls /home/$USER | grep Minecraft-1
	echo -e "\033[00m"
	
	read -p ": " rep
	
	[ -d "$rep" ] && echo -e "\033[32m\n[OK] $rep Existe !\033[00m" && Fin=0 && sleep 1 && break 
	
	if [ "$rep" = "exit" ];
	then
		Fin=1
		break
		
	else
		echo -e "\033[31mEntrée incorecte\033[00m"
		sleep 2
	fi
done

cd /home/$USER/$rep

while ((j<1));									# Server Properties chois et changement
do

if [ "$Fin" != "1" ];
then
	clear
	echo -e "\n\n		\033[36mServer Properties\033[00m\n"
	echo -e "\033[35m---------------------------------------------------------\033[00m"
	echo -e "\033[33m[\033[32m 1  \033[33m]		\033[32m\033[04mChanger le Rcon Port \033[00m"
	echo -e "\033[33m[\033[32m 2  \033[33m]		\033[32m\033[04mChanger la seed de map\033[00m"
	echo -e "\033[33m[\033[32m 3  \033[33m]		\033[32m\033[04mChanger le mode de jeux\033[00m"
	echo -e "\033[33m[\033[32m 4  \033[33m]		\033[32m\033[04mActiver les commands blocsk\033[00m"
	echo -e "\033[33m[\033[32m 5  \033[33m]		\033[32m\033[04mActiver query\033[00m"
	echo -e "\033[33m[\033[32m 6  \033[33m]		\033[32m\033[04mGenerator settings\033[00m"
	echo -e "\033[33m[\033[32m 7  \033[33m]		\033[32m\033[04mChanger nom du monde\033[00m"
	echo -e "\033[33m[\033[32m 8  \033[33m]		\033[32m\033[04mChanger le nom du serveur\033[00m"
	echo -e "\033[33m[\033[32m 9  \033[33m]		\033[32m\033[04mChanger le Query Port\033[00m"
	echo -e "\033[33m[\033[32m 10 \033[33m]		\033[32m\033[04mPVP actif ou non\033[00m"
	echo -e "\033[33m[\033[32m 11 \033[33m]		\033[32m\033[04mGénération de structures\033[00m"
	echo -e "\033[33m[\033[32m 12 \033[33m]		\033[32m\033[04mChanger difficulter\033[00m"
	echo -e "\033[33m[\033[32m 13 \033[33m]		\033[32m\033[04mRessource pack actif ou non\033[00m"
	echo -e "\033[33m[\033[32m 14 \033[33m]		\033[32m\033[04mChanger nombre de tick\033[00m"
	echo -e "\033[33m[\033[32m 15 \033[33m]		\033[32m\033[04mChanger le nombre de joueurs\033[00m"
	echo -e "\033[33m[\033[32m 16 \033[33m]		\033[32m\033[04mChanger le online mode\033[00m"
	echo -e "\033[33m[\033[32m 17 \033[33m]		\033[32m\033[04mChanger enable status\033[00m"
	echo -e "\033[33m[\033[32m 18 \033[33m]		\033[32m\033[04mAutoriser le flight\033[00m"
	echo -e "\033[33m[\033[32m 19 \033[33m]		\033[32m\033[04mChanger broadcast rcon to ops\033[00m"
	echo -e "\033[33m[\033[32m 20 \033[33m]		\033[32m\033[04mChanger la distance max de vue\033[00m"
	echo -e "\033[33m[\033[32m 21 \033[33m]		\033[32m\033[04mAjouter une IP au serveur\033[00m"
	echo -e "\033[33m[\033[32m 22 \033[33m]		\033[32m\033[04mAjouter l'adresse du ressource pack prompt\033[00m"
	echo -e "\033[33m[\033[32m 23 \033[33m]		\033[32m\033[04mActiver ou désactiver nether\033[00m"
	echo -e "\033[33m[\033[32m 24 \033[33m]		\033[32m\033[04mChanger le Port serveur\033[00m"
	echo -e "\033[33m[\033[32m 25 \033[33m]		\033[32m\033[04mActiver ou désactiver enable rcon\033[00m"
	echo -e "\033[33m[\033[32m 26 \033[33m]		\033[32m\033[04mActiver ou désactiver sync chunk writes\033[00m"
	echo -e "\033[33m[\033[32m 27 \033[33m]		\033[32m\033[04mChanger niveau OP\033[00m"
	echo -e "\033[33m[\033[32m 28 \033[33m]		\033[32m\033[04mActiver ou désactiver prevent proxy connections\033[00m"
	echo -e "\033[33m[\033[32m 29 \033[33m]		\033[32m\033[04mActiver ou désactiver hide online players\033[00m"
	echo -e "\033[33m[\033[32m 30 \033[33m]		\033[32m\033[04mChanger le ressource pack\033[00m"
	echo -e "\033[33m[\033[32m 31 \033[33m]		\033[32m\033[04mChanger Entity broadcast range percentage\033[00m"
	echo -e "\033[33m[\033[32m 32 \033[33m]		\033[32m\033[04mChanger Nombre de chunk chargés autour du joueur\033[00m"
	echo -e "\033[33m[\033[32m 33 \033[33m]		\033[32m\033[04mChanger le MDP du rcon pour connexion à distance\033[00m"
	echo -e "\033[33m[\033[32m 34 \033[33m]		\033[32m\033[04mActiver ou désactiver force gamemode\033[00m"
	echo -e "\033[33m[\033[32m 35 \033[33m]		\033[32m\033[04mActiver ou désactiver hardcore\033[00m"
	echo -e "\033[33m[\033[32m 36 \033[33m]		\033[32m\033[04mActiver ou désactiver Liste blanche\033[00m"
	echo -e "\033[33m[\033[32m 37 \033[33m]		\033[32m\033[04mActiver ou désactiver Spawn npcs\033[00m"
	echo -e "\033[33m[\033[32m 38 \033[33m]		\033[32m\033[04mActiver ou désactiver Spawn animals\033[00m"
	echo -e "\033[33m[\033[32m 39 \033[33m]		\033[32m\033[04mChanger le monde level type\033[00m"
	echo -e "\033[33m[\033[32m 40 \033[33m]		\033[32m\033[04mPermet d'ajouter a filtering config\033[00m"
	echo -e "\033[33m[\033[32m 41 \033[33m]		\033[32m\033[04mActiver ou désactiver le Spawn des monstres\033[00m"
	echo -e "\033[33m[\033[32m 42 \033[33m]		\033[32m\033[04mActiver ou désactiver Enforce whitelist\033[00m"
	echo -e "\033[33m[\033[32m 43 \033[33m]		\033[32m\033[04mChanger la protection du Spawn\033[00m"
	echo -e "\033[33m[\033[32m 44 \033[33m]		\033[32m\033[04mChanger la taille Max du monde\033[00m"
	echo -e "\033[33m[\033[32m reset \033[33m]	\033[32m\033[04mRéinitialiser les properties\033[00m"
	echo -e "\033[35m---------------------------------------------------------\033[00m"
	echo -e "\n\n"

	read -p ": " servProp


	if [ "$servProp" -eq "1" ];		# Rcon Port
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 4p server.properties)
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mChoisissez le port que vous voulez\n"
			echo -e "Contien actuellement: \033[32m'$x' \033[00m\n"
			echo -e "\033[35mPort recommandez : \033[36m'25575'\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties

			# verifier que la variable est un chifre pas dans ceux utiliser pas négatif et pas superieur

			
			[ ! -z "$Proprieter" ] && echo -e "[OK]	Variable remplie !" && VariableTest=1
			
			if [ "$VariableTest" -eq "1" ];
			then
			
				if [ "$Proprieter" -eq "1" ]; #	Port utiliser ci pas utiliser change par le port voulu
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mTCP Port Multiplexer (service de multiplexage)\033[00m"
					echo -e "\033[35mtcpmux\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "5" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mRemote Job Entry (saisie de tâche à distance)\033[00m"
					echo -e "\033[35mrje\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "7" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService d’écho\033[00m"
					echo -e "\033[35mecho\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "9" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService zéro à des fins de test \033[00m"
					echo -e "\033[35mdiscard\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "11" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mInformations système \033[00m"
					echo -e "\033[35msystat\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "13" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mSaisie de la date et de l’heure \033[00m"
					echo -e "\033[35mdaytime\033[00m"
					sleep 5
					continue

				elif [ "$Proprieter" -eq "17" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mEnvoie la citation du jour \033[00m"
					echo -e "\033[35mqotd\033[00m"
					sleep 5
					continue
			
				elif [ "$Proprieter" -eq "18" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mTransfère des SMS \033[00m"
					echo -e "\033[35mmsp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "19" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mEnvoie une séquence de caractères infinie \033[00m"
					echo -e "\033[35mchargen\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "20" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mTransmission de données FTP \033[00m"
					echo -e "\033[35mftp-data\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "21" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mConnexion FTP \033[00m"
					echo -e "\033[35mftp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "22" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService Secure Shell \033[00m"
					echo -e "\033[35mssh\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "23" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService Telnet \033[00m"
					echo -e "\033[35mtelnet\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "25" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mSimple Mail Transfer Protocol (protocole simple de transfert de courrier) \033[00m"
					echo -e "\033[35msmtp\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "37" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mProtocole temporel lisible par un ordinateur \033[00m"
					echo -e "\033[35mtime\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "39" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mResource Location Protocol (protocole de localisation des ressources) \033[00m"
					echo -e "\033[35mrip\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "42" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService de noms \033[00m"
					echo -e "\033[35mnameserver\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "43" ];
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					echo -e "\033[33mService d’annuaire WHOIS \033[00m"
					echo -e "\033[35mnicname\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -le "995" ]; # utiliser jusque a 995 https://www.ionos.fr/digitalguide/serveur/know-how/ports-tcpet-udp/
				then
					echo -e "\033[31mImpossible ce port est déjà utilisé\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -ge "65001" ];
				then
				echo -e "\033[31mImpossible ce port exist pas Max: 65'000\033[00m"
				continue
				
				elif [ "$Proprieter" = "exit" ];
				then
					break
				
				else 
					clear
					echo -e "\n\n"
					echo -e "\033[32m[OK] le port va être changé par $Proprieter\033[00m"
					sudo sed -i "s/$x/rcon.port=$Proprieter/" "server.properties"
					echo -e "\n\n"
					sleep 3
					
				fi
			fi
			
		done
	#--------------------------
	elif [ "$servProp" -eq "2" ];	# Seed
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 5p server.properties)
			if [ "$x" = "level-seed=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
				
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mChoisissez la seed que vous voulez\n"
			echo -e "Contient actuellement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			
			
			read -p ": " Proprieter		# Nouvelle properties
		
			if [ "${#Proprieter}" -ge "32" ];
			then
				echo -e "\n"
				echo -e "\033[31mC'est impossible sa dépasse le maximum\033[00m"	# Corection Fin ici
				sleep 5
				
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				x=$(sed -n 5p server.properties)
				sudo sed -i "s/$x/level-seed=$Proprieter/" "server.properties"
				echo -e "\033[32m\n\n[OK]	seed ajouter\033[00m\n"
				echo -e "Contien actuelement: \033[32m'$x' \033[00m\n\n"
				sleep 3
				break
				
			fi
		
		done
	#--------------------------	
	elif [ "$servProp" -eq "3" ];	# Gamemode
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 6p server.properties)
			if [ "$x" = "gamemode=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
				
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mChoisicer le mode de jeu que vous voulez\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mSurvie\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mAventure\033[00m"
			echo -e "[\033[32m3\033[00m]	\033[32m\033[04mCreatife\033[00m"
			echo -e "[\033[32m4\033[00m]	\033[32m\033[04mSpectater\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			
			
			read -p ": " Proprieter		# Nouvelle properties
		
			if [ "$Proprieter" -ge "1" ];		# Survie
			then
				sudo sed -i "s/$x/gamemode=survival/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			
			
			elif [ "$Proprieter" -ge "2" ];		# Aventure
			then
				sudo sed -i "s/$x/gamemode=adventure/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			
			elif [ "$Proprieter" -ge "3" ];		# Creatife
			then
				sudo sed -i "s/$x/gamemode=creative/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			
			elif [ "$Proprieter" -ge "4" ];		# Spectateur
			then
				sudo sed -i "s/$x/gamemode=spectator/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
				
				
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible sa dépace le maximume\033[00m"
				sleep 5
				
			fi
		
		done
	#--------------------------	
	elif [ "$servProp" -eq "4" ];	# Commande block
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 7p server.properties)
			if [ "$x" = "enable-command-block=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
		
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVoulez vous activer les commande block\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/enable-command-block=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/enable-command-block=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
			
			
		
		done
	#--------------------------
	elif [ "$servProp" -eq "5" ];	# Recuperation info serveur enable-query
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 8p server.properties)
			if [ "$x" = "enable-query=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
			
			
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVoulez vous autoriser la récolte d'information du serveur ?\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
						if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/enable-query=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/enable-query=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
			
			
			
			
		
		done	
	#--------------------------
	elif [ "$servProp" -eq "6" ];	# Generator settings
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 9p server.properties)
			if [ "$x" = "generator-settings=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
			
			
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet de choisire les couche d'un monde plat\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[32mExemple : \033[36m{2;7,2x3,2;1;village}"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/generator-settings={}/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s/$x/generator-settings="$Proprieter"/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
			
			
			
			
		
		done
	#--------------------------
	elif [ "$servProp" -eq "7" ];	# Level name Changer nom du monde
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 10p server.properties)
			if [ "$x" = "level-name=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nom du monde\n"
			echo -e "\033[33mAtention cela crée un nouveau monde !\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[32mExemple : \033[36mKuroworld"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/level-name=world/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s/$x/level-name="$Proprieter"/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
	
		done
	#--------------------------
	elif [ "$servProp" -eq "8" ];	# Motd Nom aficher dans la list des serveurs
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 11p server.properties)
			if [ "$x" = "motd=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nom du serveur afficher\n"
			echo -e "\033[33mdans la liste des serveur\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[32mExemple : \033[36mMon kuro server"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/motd=A Minecraft Server/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "${Proprieter:4}" != "" ];
			then
				sudo sed -i "s/$x/motd=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
	
		done
	#--------------------------
	elif [ "$servProp" -eq "9" ];	# Query Port
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 12p server.properties)
			if [ "$x" = "query.port=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
			
			
			
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mChoisicer le port que vous voulez\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "\033[35mPort recomandez : \033[36m'25565'\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties

			# verifier que la variable est un chifre pas dans ceux utiliser pas négatif et pas superieur

			
			[ ! -z "$Proprieter" ] && echo -e "[OK]	Variable remplie !" && VariableTest=1
			
			if [ "$VariableTest" -eq "1" ];
			then
			
				if [ "$Proprieter" -eq "1" ]; #	Port utiliser ci pas utiliser change par le port voulu
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTCP Port Multiplexer (service de multiplexage)\033[00m"
					echo -e "\033[35mtcpmux\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "5" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mRemote Job Entry (saisie de tâche à distance)\033[00m"
					echo -e "\033[35mrje\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "7" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService d’écho\033[00m"
					echo -e "\033[35mecho\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "9" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService zéro à des fins de test \033[00m"
					echo -e "\033[35mdiscard\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "11" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mInformations système \033[00m"
					echo -e "\033[35msystat\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "13" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mSaisie de la date et de l’heure \033[00m"
					echo -e "\033[35mdaytime\033[00m"
					sleep 5
					continue

				elif [ "$Proprieter" -eq "17" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mEnvoie la citation du jour \033[00m"
					echo -e "\033[35mqotd\033[00m"
					sleep 5
					continue
			
				elif [ "$Proprieter" -eq "18" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTransfère des SMS \033[00m"
					echo -e "\033[35mmsp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "19" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mEnvoie une séquence de caractères infinie \033[00m"
					echo -e "\033[35mchargen\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "20" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTransmission de données FTP \033[00m"
					echo -e "\033[35mftp-data\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "21" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mConnexion FTP \033[00m"
					echo -e "\033[35mftp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "22" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService Secure Shell \033[00m"
					echo -e "\033[35mssh\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "23" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService Telnet \033[00m"
					echo -e "\033[35mtelnet\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "25" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mSimple Mail Transfer Protocol (protocole simple de transfert de courrier) \033[00m"
					echo -e "\033[35msmtp\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "37" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mProtocole temporel lisible par un ordinateur \033[00m"
					echo -e "\033[35mtime\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "39" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mResource Location Protocol (protocole de localisation des ressources) \033[00m"
					echo -e "\033[35mrip\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "42" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService de noms \033[00m"
					echo -e "\033[35mnameserver\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "43" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService d’annuaire WHOIS \033[00m"
					echo -e "\033[35mnicname\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -le "995" ]; # utiliser jusque a 995 https://www.ionos.fr/digitalguide/serveur/know-how/ports-tcpet-udp/
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -ge "65001" ];
				then
				echo -e "\033[31mImposible ce port existe pas Max: 65'000\033[00m"
				continue
				
				elif [ "$Proprieter" = "exit" ];
				then
					break
				
				else 
					clear
					echo -e "\n\n"
					echo -e "\033[32m[OK] le port va etre changer par $Proprieter\033[00m"
					sudo sed -i "s/$x/query.port="$Proprieter"/" "server.properties"
					echo -e "\n\n"
					sleep 3
					
				fi
			fi
			
		done
	#--------------------------
	elif [ "$servProp" -eq "10" ];	# PVP actif ou non
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 13p server.properties)
			if [ "$x" = "pvp=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le PVP\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/pvp=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/pvp=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "11" ];	# Generation structure actif ou non
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 14p server.properties)
			if [ "$x" = "generate-structures=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver la géneration\nde structure\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/generate-structures=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/generate-structures=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
			
			
		
		done
	#--------------------------
	elif [ "$servProp" -eq "12" ];	# Difficulter
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 15p server.properties)
			if [ "$x" = "difficulty=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver la géneration\nde structure\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mPeaceful\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mEasy\033[00m"
			echo -e "[\033[32m3\033[00m]	\033[32m\033[04mNormal\033[00m"
			echo -e "[\033[32m4\033[00m]	\033[32m\033[04mHard\033[00m"
			echo -e "[\033[32m5\033[00m]	\033[32m\033[04mHardcore\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
	
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/difficulty=peaceful/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
				
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/difficulty=easy/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
				
			elif [ "$Proprieter" -eq "3" ];
			then
				sudo sed -i "s/$x/difficulty=normal/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "4" ];
			then
				sudo sed -i "s/$x/difficulty=hard/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "5" ];
			then
				sudo sed -i "s/$x/difficulty=hardcore/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
				
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			fi
	
		done
	
	# saute l'option network-compression-threshold=256
	
	elif [ "$servProp" -eq "13" ];	# Require resource pack oui ou non
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 17p server.properties)
			if [ "$x" = "require-resource-pack" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver\n"
			echo -e "\033[33mLa necesiter d'un resource pack\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/require-resource-pack=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/require-resource-pack=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "14" ];	# Max tick time
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 18p server.properties)
			if [ "$x" = "max-tick-time=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nombre de tick\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/max-tick-time=60000/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "${Proprieter:4}" != "" ];
			then
				sudo sed -i "s/$x/max-tick-time=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
	
		done
	
	# saute use-native-transport=true/
	
	#--------------------------
	elif [ "$servProp" -eq "15" ];	# Max player
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 20p server.properties)
			if [ "$x" = "max-players=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nombre de joueurs sur le server\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m-1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "-1" ];
			then
				sudo sed -i "s/$x/max-players=20/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "${Proprieter:0:1}" != "" ];
			then
				sudo sed -i "s/$x/max-players=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			
			
			fi
	
		done	
	#--------------------------	
	elif [ "$servProp" -eq "16" ];	# Online mode
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 21p server.properties)
			if [ "$x" = "online-mode=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
		VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le online mode\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/online-mode=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/online-mode=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------	
	elif [ "$servProp" -eq "17" ];	# Enable status
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 22p server.properties)
			if [ "$x" = "enable-status=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le enable status\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/enable-status=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/enable-status=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "18" ];	# Allow flight
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 23p server.properties)
			if [ "$x" = "allow-flight=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver flight\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/allow-flight=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/allow-flight=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "19" ];	# Broadcast rcon to ops 
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 24p server.properties)
			if [ "$x" = "broadcast-rcon-to-ops=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver broadcast rcon to ops\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/broadcast-rcon-to-ops=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/broadcast-rcon-to-ops=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "20" ];	# View distance
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 25p server.properties)
			if [ "$x" = "view-distance=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer la max distance de vue\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/view-distance=10/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s/$x/view-distance=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "21" ];	# Server IP
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 26p server.properties)
			if [ "$x" = "server-ip=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de rajouter une IP au server\n"
			echo -e "\033[33mle lien ne peu pas contenire de '&'\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s&$x&server-ip=&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&server-ip=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "22" ];	# Resource pack prompt
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 27p server.properties)
			if [ "$x" = "resource-pack-prompt=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire le resource pack prompt\n"
			echo -e "\033[33mle lien ne peu pas contenire de '&'\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s&$x&resource-pack-prompt=&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&resource-pack-prompt=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "23" ];	# Allow nether
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 28p server.properties)
			if [ "$x" = "allow-nether=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le nether\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/allow-nether=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/allow-nether=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "24" ];	# Server Port
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 29p server.properties)
			if [ "$x" = "server-port=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
			
			
			
			VariableTest=0
			echo -e "\n\n"
			echo -e "\033[33mChoisicer le port que vous voulez\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "\033[35mPort recomandez : \033[36m'25565'\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties

			# verifier que la variable est un chifre pas dans ceux utiliser pas négatif et pas superieur

			
			[ ! -z "$Proprieter" ] && echo -e "[OK]	Variable remplie !" && VariableTest=1
			
			if [ "$VariableTest" -eq "1" ];
			then
			
				if [ "$Proprieter" -eq "1" ]; #	Port utiliser ci pas utiliser change par le port voulu
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTCP Port Multiplexer (service de multiplexage)\033[00m"
					echo -e "\033[35mtcpmux\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "5" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mRemote Job Entry (saisie de tâche à distance)\033[00m"
					echo -e "\033[35mrje\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "7" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService d’écho\033[00m"
					echo -e "\033[35mecho\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "9" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService zéro à des fins de test \033[00m"
					echo -e "\033[35mdiscard\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "11" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mInformations système \033[00m"
					echo -e "\033[35msystat\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "13" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mSaisie de la date et de l’heure \033[00m"
					echo -e "\033[35mdaytime\033[00m"
					sleep 5
					continue

				elif [ "$Proprieter" -eq "17" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mEnvoie la citation du jour \033[00m"
					echo -e "\033[35mqotd\033[00m"
					sleep 5
					continue
			
				elif [ "$Proprieter" -eq "18" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTransfère des SMS \033[00m"
					echo -e "\033[35mmsp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "19" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mEnvoie une séquence de caractères infinie \033[00m"
					echo -e "\033[35mchargen\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "20" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mTransmission de données FTP \033[00m"
					echo -e "\033[35mftp-data\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "21" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mConnexion FTP \033[00m"
					echo -e "\033[35mftp\033[00m"
					sleep 5
					continue
					
				elif [ "$Proprieter" -eq "22" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService Secure Shell \033[00m"
					echo -e "\033[35mssh\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "23" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService Telnet \033[00m"
					echo -e "\033[35mtelnet\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "25" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mSimple Mail Transfer Protocol (protocole simple de transfert de courrier) \033[00m"
					echo -e "\033[35msmtp\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "37" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mProtocole temporel lisible par un ordinateur \033[00m"
					echo -e "\033[35mtime\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "39" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mResource Location Protocol (protocole de localisation des ressources) \033[00m"
					echo -e "\033[35mrip\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "42" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService de noms \033[00m"
					echo -e "\033[35mnameserver\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -eq "43" ];
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					echo -e "\033[33mService d’annuaire WHOIS \033[00m"
					echo -e "\033[35mnicname\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -le "995" ]; # utiliser jusque a 995 https://www.ionos.fr/digitalguide/serveur/know-how/ports-tcpet-udp/
				then
					echo -e "\033[31mImposible ce port est déja utilisé\033[00m"
					sleep 5
					continue
				
				elif [ "$Proprieter" -ge "65001" ];
				then
				echo -e "\033[31mImposible ce port existe pas Max: 65'000\033[00m"
				continue
				
				elif [ "$Proprieter" = "exit" ];
				then
					break
				
				else 
					clear
					echo -e "\n\n"
					echo -e "\033[32m[OK] le port va etre changer par $Proprieter\033[00m"
					sudo sed -i "s/$x/server-port="$Proprieter"/" "server.properties"
					echo -e "\n\n"
					sleep 3
					
				fi
			fi
			
		done
	#--------------------------
	elif [ "$servProp" -eq "25" ];	# Enable rcon
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 30p server.properties)
			if [ "$x" = "enable-rcon=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver rcon\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/enable-rcon=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/enable-rcon=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "26" ];	# Sync chunk writes
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 30p server.properties)
			if [ "$x" = "sync-chunk-writes=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver sync chunk writes\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/sync-chunk-writes=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/sync-chunk-writes=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "27" ];	# Op permission level
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 32p server.properties)
			if [ "$x" = "op-permission-level=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le niveau de permission OP\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s&$x&op-permission-level=4&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&op-permission-level=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------	
	elif [ "$servProp" -eq "28" ];	# Prevent proxy connections
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 33p server.properties)
			if [ "$x" = "prevent-proxy-connections=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le\n"
			echo -e "\033[33mPrevent proxy connections\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/prevent-proxy-connections=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/prevent-proxy-connections=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------	
	elif [ "$servProp" -eq "29" ];	# Hide online player
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 34p server.properties)
			if [ "$x" = "hide-online-players=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver la visibiliter des joueurs en ligne\n"
			echo -e "\033[33mHide online player\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/hide-online-players=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/hide-online-players=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done	
	#--------------------------
	elif [ "$servProp" -eq "30" ];	# Resource pack
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 35p server.properties)
			if [ "$x" = "resource-pack=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire le resource pack prompt\n"
			echo -e "\033[33mle lien ne peu pas contenire de '&'\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s&$x&resource-pack=&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&resource-pack=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "31" ];	# Entity broadcast range percentage
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 36p server.properties)
			if [ "$x" = "entity-broadcast-range-percentage=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nombre Entity broadcast range percentage\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/entity-broadcast-range-percentage=100/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "${Proprieter:1}" != "" ];
			then
				sudo sed -i "s/$x/entity-broadcast-range-percentage=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
	
		done
	#--------------------------
	elif [ "$servProp" -eq "32" ];	# Simulation distance chargement de chunck autoure du joueur
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 37p server.properties)
			if [ "$x" = "simulation-distance=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de changer le nombre simulation-distance\n"
			echo -e "\033[33mCorespond au nobre de chunck chargés autour du joueur\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s/$x/simulation-distance=10/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
			
			
			elif [ "${Proprieter:1}" != "" ];
			then
				sudo sed -i "s/$x/simulation-distance=$Proprieter/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
	
		done
	#--------------------------	
	elif [ "$servProp" -eq "33" ];	# Rcon password Rcon = conexion a distance
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 38p server.properties)
			if [ "$x" = "rcon.password=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire le MDP de la conexion a distance\n"
			echo -e "\033[33mle MDP ne peu pas contenire de '['\n"
			echo -e "\033[33mAtention selon le txt il n'est pas possible de rinisialiser ici"
			echo -e "\033[33mEviter les '*'\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s[$x[rcon.password=[" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s[$x[rcon.password=[Proprieter[" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done	
		
	# saute player-idle-timeout=0
	
	#--------------------------
	elif [ "$servProp" -eq "34" ];	# Force gamemode
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 40p server.properties)
			if [ "$x" = "force-gamemode=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver Force gamemode\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/force-gamemode=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/force-gamemode=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	
	# saute rate-limit=0
	
	#--------------------------
	elif [ "$servProp" -eq "35" ];	# Hardcore
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 42p server.properties)
			if [ "$x" = "hardcore=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver hardcore\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/hardcore=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/hardcore=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "36" ];	# White list
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 43p server.properties)
			if [ "$x" = "white-list=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver hardcore\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/white-list=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/white-list=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	
	# saute broadcast-console-to-ops=true
	
	#--------------------------
	elif [ "$servProp" -eq "37" ];	# Spawn npcs
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 45p server.properties)
			if [ "$x" = "spawn-npcs=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver spawn npcs\n"
			echo -e "\033[33mAutorise l'aparition des villagoi\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/spawn-npcs=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/spawn-npcs=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "38" ];	# Spawn animals
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 46p server.properties)
			if [ "$x" = "spawn-animals=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver spawn des animeaux\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/spawn-animals=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/spawn-animals=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	
	# saute function-permission-level=2
	
	#--------------------------
	elif [ "$servProp" -eq "39" ];	# Gamemode
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 48p server.properties)
			if [ "$x" = "level-type=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
				
			echo -e "\n\n"
			echo -e "\033[33mChoisicer le mode de jeu que vous voulez\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m---------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mDefault\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mSuperflat\033[00m"
			echo -e "[\033[32m3\033[00m]	\033[32m\033[04mAmplified\033[00m"
			echo -e "[\033[32m4\033[00m]	\033[32m\033[04mLarge Biomes\033[00m"
			echo -e "[\033[32m5\033[00m]	\033[32m\033[04mSingle Biomes\033[00m"
			echo -e "[\033[32m6\033[00m]	\033[32m\033[04mDebug Mode\033[00m"
			echo -e "[\033[32m7\033[00m]	\033[32m\033[04mCustom\033[00m"
			echo -e "\033[35m---------------------\033[00m"
			
			
			
			read -p ": " Proprieter		# Nouvelle properties
		
			if [ "$Proprieter" = "1" ];		# Default
			then
				sudo sed -i "s/$x/level-type=default/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" = "2" ];		# Superflat
			then
				sudo sed -i "s/$x/level-type=superflat/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi

			elif [ "$Proprieter" = "3" ];		# Amplified
			then
				sudo sed -i "s/$x/level-type=amplified/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi

			elif [ "$Proprieter" = "4" ];		# Large_Biomes
			then
				sudo sed -i "s/$x/level-type=large_biomes/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" = "5" ];		# Single_Biomes
			then
				sudo sed -i "s/$x/level-type=single_biomes/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" = "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" = "6" ];		# Debug_Mode
			then
				sudo sed -i "s/$x/level-type=debug_mode/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" = "7" ];		# Custom
			then
				sudo sed -i "s/$x/level-type=custom/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi

			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible sa dépace le maximume\033[00m"
				sleep 5
				
			fi
		
		done
	
	# saute text-filtering-config=
	
	#--------------------------
	elif [ "$servProp" -eq "40" ];	# Text filtering config
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 49p server.properties)
			if [ "$x" = "text-filtering-config=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire le Text filtering config\n"
			echo -e "\033[33mVous permet de crée des mots interdit\n"
			echo -e "\033[33mles mots ne peu pas contenire de '&'\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "1" ];
			then
				sudo sed -i "s&$x&text-filtering-config=&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&text-filtering-config=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "41" ];	# Spawn monsters
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 50p server.properties)
			if [ "$x" = "spawn-monsters=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver le spawn des monstres\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/spawn-monsters=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/spawn-monsters=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "42" ];	# Enforce whitelist
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 51p server.properties)
			if [ "$x" = "enforce-whitelist=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet d'activer ou désactiver enforce whitelist\n"
			echo -e "\033[33mSur True, ci la while list est activer \nles personne conecter qui ne sont pas dans la while list son expulsés\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m1\033[00m]	\033[32m\033[04mactiver\033[00m"
			echo -e "[\033[32m2\033[00m]	\033[32m\033[04mdésactiver\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			if [ "$Proprieter" -eq "1" ];
			then
				sudo sed -i "s/$x/enforce-whitelist=true/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi
			
			elif [ "$Proprieter" -eq "2" ];
			then
				sudo sed -i "s/$x/enforce-whitelist=false/" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	
	# saute resource-pack-sha1=
	
	#--------------------------
	elif [ "$servProp" -eq "43" ];	# Spawn protection
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 53p server.properties)
			if [ "$x" = "spawn-protection=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire la protection du spawn\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m-1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "-1" ];
			then
				sudo sed -i "s&$x&spawn-protection=16&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" != "" ];
			then
				sudo sed -i "s&$x&spawn-protection=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			else
				echo -e "\n"
				echo -e "\033[31mC'est impossible\033[00m"
				sleep 5
			fi
		done
	#--------------------------
	elif [ "$servProp" -eq "44" ];	# Spawn protection
	then
		while ((j<1));
		do
			clear
			x=$(sed -n 54p server.properties)
			if [ "$x" = "max-world-size=" ];
			then
				y="Vide"
			else 
				y=$x
			fi
	
			echo -e "\n\n"
			echo -e "\033[33mVous permet de définire la taille max du monde\n"
			echo -e "\033[33mMax world size\n"
			echo -e "Contien actuelement: \033[32m'$y' \033[00m\n"
			echo -e "[\033[31mexit\033[00m] pour quiter\n"
			echo -e "\033[35m-------------------\033[00m"
			echo -e "[\033[32m-1\033[00m]	\033[32m\033[04mRinisialiser\033[00m"
			echo -e "\033[35m-------------------\033[00m"
			
			read -p ": " Proprieter		# Nouvelle properties
			
			
			if [ "$Proprieter" = "-1" ];
			then
				sudo sed -i "s&$x&max-world-size=29999984&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
					sleep 5
				fi
			
			elif [ "$Proprieter" = "exit" ];
			then
				break
				
			elif [ "$Proprieter" -ge "29999984" ];
			then
				echo -e "\n"
				echo -e "\033[31mImposible Maximum = 29999984 !\033[00m"
				sleep 5
				
			else
				sudo sed -i "s&$x&max-world-size=$Proprieter&" "server.properties"
				Errorlevel=$?
				if [ "$Errorlevel" -eq "0" ];
				then
					echo -e "\033[32m[OK]	Commande réusit\033[00m"
					sleep 2
				elif [ "$Errorlevel" != "0" ];
				then
					echo -e "\033[31mErreure\033[00m"
				fi	
			fi
		done
	#--------------------------
	elif [ "$servProp" = "reset" ];	# Rinitialisation server.properties
	then
		sudo rm -f "server.properties"
		Errorlevel=$?
		if [ "$Errorlevel" -eq "0" ];
		then
			echo -e "\033[32m[OK]	Commande réusit\033[00m"
			echo "#Minecraft server properties" >> "server.properties"
			echo "#Sun May 08 20:51:19 CEST 2022" >> "server.properties"
			echo "enable-jmx-monitoring=false" >> "server.properties"
			echo "rcon.port=25575" >> "server.properties"
			echo "level-seed=944710140" >> "server.properties"
			echo "gamemode=creatif" >> "server.properties"
			echo "enable-command-block=false" >> "server.properties"
			echo "enable-query=false" >> "server.properties"
			echo "generator-settings={}" >> "server.properties"
			echo "level-name=world" >> "server.properties"
			echo "motd=A Minecraft Server" >> "server.properties"
			echo "query.port=25565" >> "server.properties"
			echo "pvp=true" >> "server.properties"
			echo "generate-structures=true" >> "server.properties"
			echo "difficulty=easy" >> "server.properties"
			echo "network-compression-threshold=256" >> "server.properties"
			echo "require-resource-pack=false" >> "server.properties"
			echo "max-tick-time=60000" >> "server.properties"
			echo "use-native-transport=true" >> "server.properties"
			echo "max-players=20" >> "server.properties"
			echo "online-mode=true" >> "server.properties"
			echo "enable-status=true" >> "server.properties"
			echo "allow-flight=false" >> "server.properties"
			echo "broadcast-rcon-to-ops=true" >> "server.properties"
			echo "view-distance=10" >> "server.properties"
			echo "server-ip=" >> "server.properties"
			echo "resource-pack-prompt=" >> "server.properties"
			echo "allow-nether=true" >> "server.properties"
			echo "server-port=25565" >> "server.properties"
			echo "enable-rcon=false" >> "server.properties"
			echo "sync-chunk-writes=true" >> "server.properties"
			echo "op-permission-level=4" >> "server.properties"
			echo "prevent-proxy-connections=false" >> "server.properties"
			echo "hide-online-players=false" >> "server.properties"
			echo "resource-pack=" >> "server.properties"
			echo "entity-broadcast-range-percentage=100" >> "server.properties"
			echo "simulation-distance=10" >> "server.properties"
			echo "rcon.password=" >> "server.properties"
			echo "player-idle-timeout=0" >> "server.properties"
			echo "force-gamemode=false" >> "server.properties"
			echo "rate-limit=0" >> "server.properties"
			echo "hardcore=false" >> "server.properties"
			echo "white-list=false" >> "server.properties"
			echo "broadcast-console-to-ops=true" >> "server.properties"
			echo "spawn-npcs=true" >> "server.properties"
			echo "spawn-animals=true" >> "server.properties"
			echo "function-permission-level=2" >> "server.properties"
			echo "level-type=default" >> "server.properties"
			echo "text-filtering-config=" >> "server.properties"
			echo "spawn-monsters=true" >> "server.properties"
			echo "enforce-whitelist=false" >> "server.properties"
			echo "resource-pack-sha1=" >> "server.properties"
			echo "spawn-protection=16" >> "server.properties"
			echo "max-world-size=29999984" >> "server.properties"
		
			clear
			echo -e "\033[31m\nTerminé\033[00m"
			echo -e "\033[35m------------------------------------------\033[00m"
			cat "server.properties"
			echo -e "\033[35m------------------------------------------\033[00m\n"
			sleep 10
			
		elif [ "$Errorlevel" != "0" ];
		then
			echo -e "\033[31mErreure\033[00m"
			sleep 5
		fi
		
	# --
	elif [ "$servProp" = "exit" ];	# quiter les properties
	then
		Fin=1
	fi
	

elif [ "$Fin" = "1" ];
then
	cd /home/$USER
	break

fi

done # La fin de boucle des proprieter




}


ServerStarter()									# Démarage de server
{
while ((i<1));
do
	clear
	cd /home/$USER/
	echo -e "\033[32m\n"
	ls /home/$USER | grep Minecraft-1
	echo -e "\033[00m\n"
	echo -e "\n	\033[36mChoisissez quel serveur démarrer\033[00m\n\n"
	
	read -p ": " StartMonServer
	
	if [ -d "$StartMonServer" ];
	then
		cd /home/$USER/$StartMonServer/
		
		echo -e "\033[33m\033[04m\nDémarrage en cours \033[00m\033[36m...\033[32m\n"
		sh -x Start_MC_Serveur.sh
		
		echo -e "\033[00m\n"
	
	break
	fi
	
done
}

ServerDel()										# Supression de serveurs
{
while ((i<1));
do
	clear
	cd /home/$USER/
	echo -e "\033[32m\n"
	ls /home/$USER | grep Minecraft-1
	echo -e "\033[00m\n"
	echo -e "\n	\033[36mChoisissez quel serveur Supprimer !\033[00m\n\n"
	
	read -p ": " DelMonServer
	
	if [ -d "$DelMonServer" ];
	then
		clear
		echo -e "\n\n\033[33m\033[04mLe Serveur Minecraft \033[32m'$DelMonServer'\033[00m \033[33mva être supprimé\033[00m\n"
		
		echo -e "\033[35m--------------------\033[00m"
		echo -e "[\033[32my\033[00m] \033[33mpour continuer\033[00m"
		echo -e "[\033[31mn\033[00m] \033[33mpour annuler\033[00m"
		echo -e "\033[35m--------------------\033[00m\n"
		
		read -p ": " ok
		
		if [ "$ok" = "y" ];
		then
			echo -e "	\033[33m\033[04m\nSuppression en cours \033[00m\033[31m...\033[00m\n"
			sudo rm -rf /home/$USER/$DelMonServer/
			Errorlevel=$?
			if [ "$Errorlevel" -eq "0" ];
			then
				echo -e "\033[32m[OK]	Commande réusite\033[00m"
				sleep 2
				break
			elif [ "$Errorlevel" != "0" ];
			then
				echo -e "\033[31mErreure\033[00m"
				sleep 5
			fi
			
		elif [ "$ok" = "n" ];
		then
			clear
			echo -e "\n\n"
			echo -e "	\033[33m\033[04m\nSuppression\033[00m\033[31m ANNULER\033[00m\n"
			sleep 4
			break
		fi
	
	elif [ "$DelMonServer" = "exit" ];
	then
		echo -e "\033[31m\n\nEXIT\033[00m"
	
	break
	fi
	
done
}

MAJ()											# Mise a joure automatique du scripte
{
echo -e "	\n\n\033[33m\033[04mMise à jour en cours\033[00m\033[32m ..."
cd /home/$USER/
sudo rm -f MAJ.sh
echo "#!/bin/bash" >> MAJ.sh
echo "sudo rm -rf /home/$USER/KLMSC" >> MAJ.sh
echo "git clone https://github.com/00MY00/KLMSC.git && sudo chmod +rwx /home/$USER/KLMSC/KLMSC.sh && cd /home/$USER/KLMSC/" >> MAJ.sh
echo "Errorlevel=\$?" >> MAJ.sh
echo "if [ "\$Errorlevel" -eq "0" ];" >> MAJ.sh
echo "then" >> MAJ.sh
echo "	echo -e "\033[32m[OK]	Commande réusite\033[00m"" >> MAJ.sh
echo "	sudo chmod +rwx /home/$USER/KLMSC/" >> MAJ.sh
echo "	./KLMSC.sh" >> MAJ.sh
echo "	sleep 2" >> MAJ.sh
echo "	break" >> MAJ.sh
echo "elif [ "\$Errorlevel" != "0" ];" >> MAJ.sh
echo "then" >> MAJ.sh
echo "	echo -e "\033[31mErreure\033[00m"" >> MAJ.sh
echo "	sleep 5" >> MAJ.sh
echo "fi" >> MAJ.sh

sudo chmod +rwx MAJ.sh
./MAJ.sh
exit								# crée un MSG d'ereur aprè un maj est un exit mais permet de bien quiter malgrer un exit
}

INFO()											# Afficher les fichier d'aide
{
##########################
#
TutoVbX="Tutorielle d'utilisation de KLMc Virtual Box.docx"
TutoX11="Utiliser Client Minecraft est affichage docx.docx"

# aficher le contenu docx

libreoffice --version
Errorlevel=$?
	if [ "$Errorlevel" -eq "0" ];
	then
		clear
		echo -e "Libreoffiche est installer"
		sleep 2
	elif [ "$Errorlevel" != "0" ];
	then
		sudo apt install libreoffice
	fi

while ((i<1));
do
clear
cd /home/$USER/KLMSC/
echo -e "\n\n	Guide d'affichage de la documantation"
echo -e "\033[35m---------------------------------------------\033[00m"
echo -e "\033[37m	[ \033[36mexit\033[37m ]	\033[33m\033[04mPour quiter\033[00m"
echo -e "\033[37m	[ \033[36m1\033[37m ]	\033[33m\033[04mREADME\033[00m"
echo -e "\033[37m	[ \033[36m2\033[37m ]	\033[33m\033[04mLICENSE\033[00m"
echo -e "\033[37m	[ \033[36m3\033[37m ]	\033[33m\033[04mConffiguration de X11 pour client MC\033[00m"
echo -e "	---- Nécecite X11 ----"
echo -e "\033[37m	[ \033[36m4\033[37m ]	\033[33m\033[04mTutorielle d'utilisation de KLMSC sur VB\033[00m"
echo -e "\033[37m	[ \033[36m5\033[37m ]	\033[33m\033[04mTutorielle d'utilisation de KLMSC\033[00m"
echo -e "\033[35m---------------------------------------------\033[00m"
echo -e "\n\n"

read -p ": " InfoDoc

if [ "$InfoDoc" = "1" ];
then
	clear
	cat README.md
	
	read -p "" pause

elif [ "$InfoDoc" = "2" ];
then
	clear
	cat LICENSE
	
	read -p "" pause
	
elif [ "$InfoDoc" = "3" ];
then
	clear
	cat X11.txt
	
	read -p "" pause
	
elif [ "$InfoDoc" = "4" ];							# Utilise le X11 sur PUTTY pour afficher avec libreoffice
then
	clear
	libreoffice "$TutoVbX"

elif [ "$InfoDoc" = "5" ];
then
	clear
	libreoffice "$TutoX11"
	
elif [ "$InfoDoc" = "exit" ];
then
	break

fi

done
}

InstallMinecraft_client()
{
while ((i<1));
do
	clear
	wget https://dl2.tlauncher.org/f.php?f=files%2FTLauncher-2.841.zip
	Errorlevel=$?
	if [ "$Errorlevel" -eq "0" ];
	then
		echo -e "\033[32m[OK]	Commande réusite\033[00m"
		sleep 2
		clear
		sudo apt install unzip
		sudo mv "f.php?f=files%2FTLauncher-2.841.zip" "jar"
		sudo chmod +rwx jar
		[ ! -d "/home/$USER/Tluncheur" ] && mkdir /home/$USER/Tluncheur/
		cd /home/$USER/Tluncheur/
		sudo mv "/home/$USER/jar" "/home/$USER/Tluncheur"
		sudo unzip jar
		sudo rm -f jar
		echo -e "[OK] Terminé"
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt install openjdk-17-jdk
		sudo apt-get install openjfx
		sudo chmod +rwx TLauncher-2.841.jar
		sudo sed -i "s/X11Forwarding no/X11Forwarding yes/" "/etc/ssh/sshd_config"
		
		
	elif [ "$Errorlevel" != "0" ];
	then
		echo -e "\033[31mErreure\033[00m"
		sleep 5
		break
	fi
done
}

StartMinecraftClient()
{
DISPLAY=localhost:0.0
sudo java -jar TLauncher-2.841.jar
}

#----------------------------------------------------------
#				Titre de démarage du script
clear
echo -e "\033[35m		   Version du script :\033[36m$VERSION\033[00m"						# Info de la version du script
echo -e "\n\n\n"
echo -e "\033[32m	██╗  ██╗\033[33m██╗     \033[34m███╗   ███╗\033[35m███████╗ \033[36m██████╗"
echo -e "\033[32m	██║ ██╔╝\033[33m██║     \033[34m████╗ ████║\033[35m██╔════╝\033[36m██╔════╝"
echo -e "\033[32m	█████╔╝ \033[33m██║     \033[34m██╔████╔██║\033[35m███████╗\033[36m██║     "
echo -e "\033[32m	██╔═██╗ \033[33m██║     \033[34m██║╚██╔╝██║\033[35m╚════██║\033[36m██║     "
echo -e "\033[32m	██║  ██╗\033[33m███████╗\033[34m██║ ╚═╝ ██║\033[35m███████║\033[36m╚██████╗"
echo -e "\033[32m	╚═╝  ╚═╝\033[33m╚══════╝\033[34m╚═╝     ╚═╝\033[35m╚══════╝ \033[36m╚═════╝\033[00m"
echo -e "\n		\033[32m\033[04mCrée par Kuroakashiro"
echo -e "		\033[32m\033[04mTous droit réservé à Kuroakashiro\n"
echo -e "\033[30m"
sleep 5
echo -e "\033[00m"

#----------------------------------------------------------

while ((i<1));									# Main
do
	clear
	echo -e "\033[35m			Version du script :\033[36m$VERSION\033[00m"						# Info de la version du script
	echo -e "\033[35m≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡\033[00m"
	echo -e "\n\n\033[33m	Bienvenue dans le script de creation de serveur\n	Minecraft crée par \033[32mKuroakashiro \033[33m!\033[00m"
	echo -e "\n\n	[\033[32myes  \033[00m] \033[00mPour continuer"
	echo -e "	[\033[31mnon  \033[00m] \033[00mpour stoper ou '\033[31mexit\033[00m'"
	echo -e "	[\033[32mprop \033[00m] Pour Changer les propriétés"
	echo -e "	[\033[32mdel  \033[00m] Pour Suprimer un serveur"
	echo -e "	[\033[32mmaj  \033[00m] Pour Mettre à jour le script"
	echo -e "	[\033[32minf  \033[00m] Pour Afficher les documents d'aide"
	echo -e "	[\033[32mstart\033[00m] Pour Afficher est démarrer les serveurs"
	echo -e "\n"
	echo -e "\033[35m≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡\033[00m\n"

	read -p ": " user								# Start demande



	if [ "$user" = "yes" ];
	then
		startt
	
	elif [ "$user" = "y" ];
	then
		startt
	
	elif [ "$user" = "non" ];
	then
		echo -e "\033[31mSTOP\033[00m"
		sleep 2
		exit
	
	elif [ "$user" = "n" ];
	then
		echo -e "\033[31mSTOP\033[00m"
		sleep 2
		exit
	
	elif [ "$user" = "exit" ];
	then
		echo -e "\033[31mEXIT\033[00m"
		sleep 2
		exit
	
	elif [ "$user" = "rose" ];
	then
		RoseDeFeu
		
	elif [ "$user" = "prop" ];
	then
		ServeurProperties
		
	elif [ "$user" = "start" ];
	then
		ServerStarter
		
	elif [ "$user" = "del" ];
	then
		ServerDel
		
	elif [ "$user" = "maj" ];
	then
		MAJ
		
	elif [ "$user" = "inf" ];
	then
		INFO
		
	elif [ "$user" = "" ];
	then
		echo -e "\033[31mC'est VIDE $USER PARLE MOI MERDE !!\033[00m"
		sleep 3

	else
		echo -e "\033[31mConais pas '$user'\033[00m"
		sleep 1	
fi


done