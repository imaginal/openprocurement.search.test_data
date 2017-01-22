#!/bin/sh

CONCURENCY=10
REQUESTS=1000
NOT_FOUND=100

/opt/search-tenders/bin/test_load \
	-c $CONCURENCY -n $REQUESTS -z $NOT_FOUND \
	--pid plan_id.json \
	--cpv cpv.json \
	--dkpp dkpp.json \
	--date plan_date.json \
	--edrpou edrpou.json \
	--budget budget.json \
	--query query.json \
	--sort plan_sort.json \
	--log test_load_plans.log \
	http://127.0.0.1:8484/plans 
