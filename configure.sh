#!/bin/sh

# Show V2Ray Config
cat /etc/v2ray/config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json