data "external" "dig_opendns_ip" {
  program = ["/bin/bash", "-c", <<EOF
set -e
ip=$(dig +short myip.opendns.com @resolver1.opendns.com -4)
echo "{\"ip\": \"$ip\"}"
EOF
  ]
}
