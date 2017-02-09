#!/bin/bash

header="30-Day Search Data Results:"
border="------------------------------------"

username="jdemos@twitter.com"
path="files/search-data.json"

curl --compressed -u${username}:${PW} "https://gnip-api.twitter.com/search/30day/accounts/John-Demos/prod.json" -X POST -d @${path}