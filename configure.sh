#!/bin/sh

# New Config
cat > /etc/v2ray/config.json << EOF
{
    "inbounds": [
        {
            "port": $V2RAY_PORT,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "$BACKEND_UUID",
                        "alterId": 64
                    }
                ]
            }
        },
        {
            "port": 8188,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "$FRONTEND_UUID",
                        "alterId": 64
                    }
                ]
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                    "path": "/$V2RAY_PATH"
                }
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom",
            "settings": {}
        }
    ]
}
EOF

cat /etc/v2ray/config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json