#!/bin/bash

# Edit the rules directly in the curl command below

# Run: $ sh GET-validator.sh

source ~/gnip-env.sh

base_url="https://gnip-api.twitter.com"
label="prod" # Enter your stream label if different than 'prod'

header="PowerTrack Rule Validator Results:"
border="------------------------------------"

echo $border
echo $header
echo $border

curl -X POST -u${UN}:${PW} "${base_url}/rules/powertrack/accounts/${ACCOUNT}/publishers/twitter/${label}/validation.json" -d '{"rules":[{"value":"from:jack lang:en"}]}'