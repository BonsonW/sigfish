#!/bin/bash

out="yesfish_vs_nofish.csv"
yesfish="yesfish_freq_table.csv"
nofish="nofish_freq_table.csv"

die() {
    echo "$@" 1>&2
    exit 1
}

# get the time  respective columns of each file
join -t"," -j 1 -o 1.1,1.6,2.6 <(sort -k1 $yesfish) <(sort -k1 $nofish) | sort -nk1 > $out
