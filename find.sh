#!/usr/bin/env bash

LAT=$1
LON=$2

curl -x http://36.147.78.166:443  "https://raspy-smoke-d754.marxplank49.workers.dev/api/new/surrounding/car?latitude=${LAT}&longitude=${LON}" 
