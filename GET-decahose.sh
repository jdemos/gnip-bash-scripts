#!/bin/bash
# This script will only connect to 1 of 2 Decahose stream partitions (50% of the full hose volume)

# Run: $ sh GET-decahose.sh

source ~/gnip-env.sh

base_url="https://gnip-stream.twitter.com"
label="prod" # Enter your stream label if different than 'prod'

curl --compressed -v -u${UN}:${PW} "${base_url}/stream/sample10/accounts/${ACCOUNT}/publishers/twitter/${label}.json?partition=1"