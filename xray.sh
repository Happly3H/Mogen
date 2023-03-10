#!/bin/sh
if [ ! -f UUID ]; then
  UUID="90b560a6-46da-41c8-acd7-0738e2f93994"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

