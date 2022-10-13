#!/user/bin/bash

## get challenge ##
## ggrep -P equivalent sur apple de grep -P ##

    challenge=$(curl -i https://alcasar.laplateforme.io/intercept.php --location-trusted | ggrep -o -P '(?<=challenge=).*(?=&called)') \

## send post request ##

    curl -i \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -X POST -F "challenge=$challenge" -F "username=clement.marin@laplateforme.io" -F "password=Minecraft01@" https://alcasar.laplateforme.io/intercept.php \
    --location 