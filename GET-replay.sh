#!/bin/bash

# Run: $ sh GET-replay.sh 201801010000 201801020000 (customize the fromDate and toDate arguments)

source ~/gnip-env.sh

base_url="https://gnip-stream.gnip.com"
label="prod" # Enter your endpoint label if different than 'prod'

fromDate=$1
toDate=$2

curl --compressed -v -u${UN}:${PW} "${base_url}/replay/powertrack/accounts/${ACCOUNT}/publishers/twitter/${label}.json?fromDate=${fromDate}&toDate=${toDate}"