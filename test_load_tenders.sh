#!/bin/sh

CONCURENCY=10
REQUESTS=1000
NOT_FOUND=100

/opt/search-tenders/bin/test_load \
	-c $CONCURENCY -n $REQUESTS -z $NOT_FOUND \
	--tid tender_id.json \
	--cpv cpv.json \
	--dkpp dkpp.json \
	--date date.json \
	--edrpou edrpou.json \
	--region region.json \
	--value value.json \
	--status status.json \
	--query query.json \
	--sort sort.json \
	--log test_load_tenders.log \
	http://127.0.0.1:8484/tenders 
