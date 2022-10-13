#./bin/bash

new=Shell_Userlist.csv
old=Shell_Userlist_Backup.cvs

if cmp --silent -- $old $new; then
        echo "Updating usernames!"
        sh accesrights.sh
else
        echo "No update needed!"
fi

##CRONTAB## 00 */5 * * * '/home/parallels/Documents/checkChange' ##CRONTAB##