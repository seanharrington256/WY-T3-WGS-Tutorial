#!/bin/bash


## edited by SMH for use on WildIris 

for contig in $@
do
    outname=$(basename $contig)

    blastn \
    -task megablast \
    -query $contig \
    -db nt \
    -outfmt '6 qseqid staxids bitscore std sscinames sskingdoms stitle' \
    -culling_limit 5 \
    -num_threads 8 \
    -evalue 1e-5 \
    -out $outname.vs.nt.cul5.1e5.megablast.out 

done


