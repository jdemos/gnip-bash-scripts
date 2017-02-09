#!/bin/bash

header="Full-Archive Search Data Results:"
border="------------------------------------"

username="jdemos@twitter.com"
account='John-Demos'
label='dev'
path="files/fas-data.json"

curl --compressed -u${username}:${PW} "https://data-api.twitter.com/search/fullarchive/accounts/${account}/${label}.json" -X POST -d @${path}
