#!/bin/bash

header="Full-Archive Search Data Results:"
border="------------------------------------"

username="jdemos@twitter.com"
account='John-Demos'
label='dev'

# echo $border
# echo $header
# echo $border

curl --compressed -u${username}:${PW} "https://gnip-api.twitter.com/search/fullarchive/accounts/${account}/${label}.json?query=from:applemusic&fromDate=201506010000&toDate=201506060000&maxResults=10"
