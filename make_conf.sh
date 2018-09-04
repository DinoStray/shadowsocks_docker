#!/usr/bin/env bash

tee <<EOF
{
    "server":"0.0.0.0",
EOF

echo "    \"server_port\":${SS_PORT},"
echo "    \"password\":\"${SS_PWD}\","
echo "    \"method\":\"${SS_METHOD}\","    

tee <<EOF
    "local_port":1080,
    "timeout":600 
}
EOF