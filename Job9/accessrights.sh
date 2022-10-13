#!/user/bin/bash

MY_INPUT='/home/parallels/Documents/Shell_Userlist.csv'

while IFS=, read -r ID FirstName Name Pass Group || [ -n "$Group" ]; 
	do
	
        varusername="$FirstName"_"$Name"

        cleanusername="$(echo "${varusername}" | tr -d '[:space:]')"
				sudo useradd -p $(openssl passwd -1 $Pass) $cleanusername
	
	if [ $Group=Admin ];
	
	then
	    	sudo usermod -aG sudo $cleanusername
	fi
done <"$MY_INPUT"
	
        echo Users created succesfully
				sudo userdel Prenom_Nom

