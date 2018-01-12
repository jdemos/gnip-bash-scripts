#!/bin/bash

# This script will only create an HPT job with the job details as defined in the files/hpt-data.json file.
# Edit the 'hpt-data.json' file prior to running to adjust he query and timeframe parameters.

# Run: $ sh POST-hpt.sh

source ~/gnip-env.sh

base_url="https://gnip-api.gnip.com" # Staging URL: 'https://gnip-api-staging.bastion.gnip.com'
query="files/hpt-data.json"

curl -v -H "Content-Type: application/json" -X POST -u${UN}:${PW} "${base_url}/historical/powertrack/accounts/${ACCOUNT}/publishers/twitter/jobs.json"  -d @${query}