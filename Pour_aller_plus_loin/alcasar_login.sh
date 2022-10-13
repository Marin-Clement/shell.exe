#!/user/bin/bash

## get challenge ##
## ggrep -P equivalent sur apple de grep -P ##

    challenge=$(curl -i https://alcasar.laplateforme.io/intercept.php --location-trusted | ggrep -o -P '(?<=challenge=).*(?=&called)') \

## send post request ##

    curl -i \
    -H "Content-Type: multipart/form-data" \
    -X POST -F "challenge=$challenge" -F "username=$1" -F "password=$2" -F "button=Authentication" https://alcasar.laplateforme.io/intercept.php \
    --location 
    echo $challenge

    #clement.marin@laplateforme.io
    #Minecraft01@