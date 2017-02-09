#!/bin/bash

header="30-Day Search Counts Results:"
border="------------------------------------"
username="jdemos@twitter.com"
path="files/isentia.json"

# echo $border
# echo $header
# echo $border

curl --compressed -u${username}:${PW} "https://gnip-api.twitter.com/search/30day/accounts/John-Demos/prod/counts.json" -X POST -d @${path}