#!/bin/bash

header="PowerTrack Rule Validator Results:"
border="------------------------------------"

echo $border
echo $header
echo $border

curl -v -X POST -ujdemos@twitter.com:${PW} https://gnip-api.twitter.com/rules/powertrack/accounts/John-Demos/publishers/twitter/v2/validation.json -d '{"rules":[{"value":"from:johnd"}]}'