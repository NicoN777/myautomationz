import sys
from twilio.rest import Client

client = Client(sys.argv[1], sys.argv[2])
to = sys.argv[3]
body = sys.argv[4]
message = client.messages.create(from_ = '+15127649985', to='+1'+to, body=body)

print(message.sid)


