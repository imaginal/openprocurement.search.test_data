#!/bin/sh

CONCURENCY=10
REQUESTS=1000
NOT_FOUND=20

/opt/search-tenders/bin/test_load -c $CONCURENCY -n $REQUESTS -z $NOT_FOUND \
	--query orgsuggest.json \
	--log test_load_orgsuggest.log \
	http://127.0.0.1:8484/orgsuggest 
