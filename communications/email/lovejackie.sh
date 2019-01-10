#!/bin/bash
. /home/pi/AutomationScripts/control/vars.ctl

log=babyboo.log
logcomplete=${automation_logs}/${log}
date >> ${logcomplete}
echo "Sending daily 8AM mail to my babe..." >> ${logcomplete}
lovemessages=($'Baby,\n you are the most beautiful woman. Thanks for being there for me.' $'Baby,\n I love you soooo much. Please dont forget to clean up after yourself. Love and Respect,\n Nico.\nPS Toasty and Pika love you too hehehe' $'You are one in a million, thanks for brightening my day. I LOVE YOU' $'Baba,\n sorry if i smell funky today... I probably have not showered in a bit. PLEASE HAVE FAITH IN ME. \nLove,\nNico')
LOVEEXPR=${lovemessages[$RANDOM %  ${#lovemessages[@]}]}
echo ${LOVEEXPR} >> ${logcomplete}
/usr/games/cowsay ${LOVEEXPR} | mail -s "Baby girl..." jchorush@utexas.edu

