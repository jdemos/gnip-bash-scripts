#!/bin/bash

username='jdemos@twitter.com'
account='John-Demos'
label='v2'

curl --compressed -v -ujdemos@twitter.com:${PW} https://gnip-stream.twitter.com/stream/powertrack/accounts/${account}/publishers/twitter/${label}.json