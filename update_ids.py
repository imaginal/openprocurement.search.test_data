#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import json
import datetime


def main():
    if len(sys.argv) < 2:
        print "Usage: update_ids.py tender_id.json"
        return 1

    with open(sys.argv[1]) as fp:
        data = json.load(fp)

    key = max(data.keys())

    prefix, tail = key.split('-201', 1)

    day = datetime.datetime.today()

    while True:
        fmt = day.isoformat()[:10]
        key = "{}-{}".format(prefix, fmt)
        if key in data:
            break
        data[key] = ""
        day -= datetime.timedelta(days=1)

    with open(sys.argv[1], 'w') as fp:
        json.dump(data, fp, indent=0, ensure_ascii=False, sort_keys=True)


if __name__ == '__main__':
    sys.exit(main())
