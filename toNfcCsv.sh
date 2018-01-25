#!/bin/bash

make_csv()
{
dir="$1"

find ${dir} | nkf -wLu --ic=UTF8-MAC | nkf -s > ${dir}.csv
}

for i in "$@"
do
  make_csv "$i"
done