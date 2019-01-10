#!/bin/bash
. /home/pi/AutomationScripts/control/vars.ctl

log=josinacho.log
logcomplete=${automation_logs}/${log}
date >> ${logcomplete}
echo "Mail send to ma brosky..." >> ${logcomplete}
messages=("Bro, tqm. Un abrazo" "Bro eres buen chango.TQM Un abrazo a vos y Katie" "A ver cuando me vienes a visitar, te voy a llevar a comer unos ramen Tatsuya" "No es bro, no es wero, no es werito, no es RRO, just WRO, WRO BMX" "Bro te extrano, un beso. Toasty te manda saludos dice que se va a hacer pis en mi alfombra cuando te vea" "Le mandas un saludo a Tara")
EXPR=${messages[$RANDOM %  ${#messages[@]}]}
echo ${EXPR} >> ${logcomplete}
/usr/games/cowsay ${EXPR} | mail -s "Brehhhhh..." josinunez@gmail.com

