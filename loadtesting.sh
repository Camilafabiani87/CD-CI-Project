#!/usr/bin/env bash

locust -f locustfile.py --host https://myweb87.azurewebsites.net/ --users 100 --spawn-rate 5
