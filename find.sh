#!/usr/bin/env bash

LAT=$1
LON=$2

curl -x http://36.147.78.166:443  "https://newmapi.7mate.cn/api/new/surrounding/car?api/new/surrounding/car?latitude=${LAT}&longitude=${LON}" 
