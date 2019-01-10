. ~/AutomationScripts/conf/twilio/whatsthetwilio.properties
acct=${sid}
token=${authtoken}
to=${1}
body=${2}
echo ${acct} ${token}
curl -X POST https://api.twilio.com/2010-04-01/Accounts/${acct}/Messages.json \
--data-urlencode "From=+15127649985" \
--data-urlencode "Body=${body}" \
--data-urlencode "To=+1${to}" \
-u ${acct}:${token}
