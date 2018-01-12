#!/bin/bash

# Run:
# $ sh POST-fas.sh (for data request)
# $ sh POST-fas.sh counts (for counts requests)

source ~/gnip-env.sh

label="dev" # Enter your endpoint label if different than 'dev'
data_query="files/fas-data.json"
counts_query="files/fas-counts.json"

data_req="https://data-api.twitter.com/search/fullarchive/accounts/${ACCOUNT}/${label}.json"
counts_req="https://data-api.twitter.com/search/fullarchive/accounts/${ACCOUNT}/${label}/counts.json"

if [ $1 == "counts" ]
then
	curl --compressed -u${UN}:${PW} "${counts_req}" -X POST -d @${counts_query}
else
	curl --compressed -u${UN}:${PW} "${data_req}" -X POST -d @${data_query}
fi