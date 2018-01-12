#!/bin/bash

# Run: $ sh GET-rules.sh

source ~/gnip-env.sh

base_url="https://gnip-api.twitter.com"
label="prod" # Enter your stream label if different than 'prod'

header="PowerTrack Rules on '${label}' stream:"
border="------------------------------------"

echo $border
echo $header
echo $border

curl -u${UN}:${PW} "${base_url}/rules/powertrack/accounts/${ACCOUNT}/publishers/twitter/${label}.json"