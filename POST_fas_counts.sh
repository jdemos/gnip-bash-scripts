#!/bin/bash

header="Full-Archive Search Counts Results:"
border="------------------------------------"

username="jdemos@twitter.com"
account='John-Demos'
label='dev'
path="files/fas-counts.json"

curl --compressed -u${username}:${PW} "https://gnip-api.twitter.com/search/fullarchive/accounts/${account}/${label}/counts.json" -X POST -d @${path}