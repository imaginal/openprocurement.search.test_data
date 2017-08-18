#!/bin/sh

CONCURENCY=10
REQUESTS=100
NOT_FOUND=40

/opt/search-tenders/bin/test_load \
	-c $CONCURENCY -n $REQUESTS -z $NOT_FOUND \
	--aid auction3_id.json \
	--cav cav.json \
	--cpv cpv.json \
	--cpvs cpvs.json \
	--date date.json \
	--edrpou auction_edrpou.json \
	--region region.json \
	--item_region region.json \
	--item_square square.json \
	--value value.json \
	--status status.json \
	--query auction_query.json \
	--sort sort.json \
	--log test_load_auctions.log \
	http://127.0.0.1:8484/auctions?index=3

