#!/bin/bash

FILE='/home/ubuntu/MOUNT3/angela/xAT0008_SLAMseq2/raw_data/*.tar'

for f in $FILE
do
        NEWDIR=tempo
        mkdir $NEWDIR

        tar -xvf $f -C $NEWDIR

        F='tempo/*R1_001.fastq.gz'

        name=$(basename $f)

        cat $F > ${name%.*}.fastq.gz

        rm -r $NEWDIR
done
