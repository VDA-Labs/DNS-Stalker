#!/bin/bash

printf "Have to install a few things \n"
apt install -y mailutils
apt install -y python-pip
pip install dnspython


#URL input for starting task scheduler in crontab
printf "\n"

printf "Input the URL you want to Stalk \n"
printf "Example: vdalabs.com \n"
read URL

printf "\n"

#Writing to /etc/crontab with scheduled task
echo "39 *    * * *   root    (cd "/opt/DNS-Stalker/" && python dnstwist.py --registered --format csv $URL > outfile.csv)" >> /etc/crontab
echo "49 *    * * *   root    (cd "/opt/DNS-Stalker/" && ./comparer.sh)" >> /etc/crontab

#Email input and writing to comparer.sh
printf "Please enter the email you want to send to: \n"
read EMAIL

printf ""
sed -i "s~placeholder~$EMAIL~g" /opt/DNS-Stalker/comparer.sh


#Domain input and writing to comparer.sh
printf "Please enter the account and domain to send from: \n" 
printf "Example, admin@gmail.com \n"
read DOMAIN
printf ""
sed -i "s~things~$DOMAIN~g" /opt/DNS-Stalker/comparer.sh

#Create master.txt file by starting dnstwist
printf ""
printf "Making master.csv file \n"
printf "Please wait, this may take a few minutes \n"
printf "For longer domain names, this may take up to 20 minutes \n"
python dnstwist.py --registered --format csv $URL > /opt/DNS-Stalker/master.csv
printf ""
printf "All Done! Thanks, Support VDA Labs! https://vdalabs.com \n"
printf "\n"
