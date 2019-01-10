. ~/AutomationScripts/conf/twilio/whatsthetwilio.properties
acct=${sid}
token=${authtoken}
echo ${acct} ${token}
curl -X POST https://api.twilio.com/2010-04-01/Accounts/${acct}/Messages.json \
--data-urlencode "From=+15127649985" \
--data-urlencode "Body=${1}" \
--data-urlencode "To=+15129980328" \
-u ${acct}:${token}
