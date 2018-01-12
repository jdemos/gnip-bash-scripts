#!/bin/bash

# Run: $ sh POST-hpt.sh

source ~/gnip-env.sh

base_url="https://gnip-api.gnip.com" # Staging URL: 'https://gnip-api-staging.bastion.gnip.com'
query="files/hpt-data.json"

curl -v -H "Content-Type: application/json" -X POST -u${UN}:${PW} "${base_url}/historical/powertrack/accounts/${ACCOUNT}/publishers/twitter/jobs.json"  -d @${query}