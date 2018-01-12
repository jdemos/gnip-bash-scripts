#!/bin/bash

# Run: $ sh GET-powertrack.sh

source ~/gnip-env.sh

base_url="https://gnip-stream.twitter.com"
label="prod" # Enter your stream label if different than 'prod'

curl --compressed -v -u${UN}:${PW} "${base_url}/stream/powertrack/accounts/${ACCOUNT}/publishers/twitter/${label}.json"