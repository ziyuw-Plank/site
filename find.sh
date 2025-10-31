#!/usr/bin/env bash

LAT=$1
LON=$2

curl -sS "https://newmapi.7mate.cn/api/new/surrounding/car?latitude=${LAT}&longitude=${LON}" 
