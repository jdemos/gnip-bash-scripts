#!/bin/bash

# Run: $ sh GET-replay-rules.sh

source ~/gnip-env.sh

base_url="https://gnip-api.twitter.com"
label="prod"

header="Replay Rules on '${label}' stream:"
border="=================================="

echo $border
echo $header
echo $border

curl --compressed -u${UN}:${PW} "${base_url}/rules/powertrack-replay/accounts/${ACCOUNT}/publishers/twitter/${label}.json"