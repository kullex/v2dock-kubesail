#!/bin/sh

# Show V2Ray Config
echo "======DEBUG======"
echo $V2RAY_PORT
echo $V2RAY_PATH
echo $FRONTEND_UUID
echo $BACKEND_UUID
cat /etc/v2ray/config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json