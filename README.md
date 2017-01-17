Test data
=========

Common test data for `openprocurement.search.test_load` based on prozorro tenders, plans and orgs.

Usage
-----

    $ # first try
    $ bin/test_load -h

    $ # run for tenders, save log to output.log
	$ bin/test_load -c 10 -n 1000 \
		--tid tender_id.json \
		--cpv cpv.json \
		--dkpp dkpp.json \
		--date date.json \
		--edrpou edrpou.json \
		--region region.json \
		--status status.json \
		--query query.json \
		--log output.log \
		http://127.0.0.1:8484/tenders

	$ # run for orgsuggest
	$ bin/test_load -c 10 -n 1000 \
		--query orgsuggest.json \
		http://127.0.0.1:8484/orgsuggest

