#!/bin/bash
. ~/myautomationz/control/vars.ctl

log=poloboii.log
logcomplete=${automation_logs}/${log}
date >> ${logcomplete}
echo "Mail send to polo..." >> ${logcomplete}
#messages=("Polo, you are loved... wanna play smash" "Alonso says hiiii" "Im your boss" "Wondering if you will ever be free to hangout..." "iMija eres bien nachitas" "iHoney, cuidese mucho un abrazo" "hashtag onelove")
#EXPR=${messages[$RANDOM %  ${#messages[@]}]}
EXPR=$(/usr/games/fortune -a)
echo ${EXPR} >> ${logcomplete}
/usr/games/cowsay ${EXPR} | mail -s "Ayyy gata..." perezpolo817@gmail.com

