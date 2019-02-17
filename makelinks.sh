#!/usr/bin/env bash
for i in *.cursor
do
    mv $i $(basename $i .cursor)
done

for i in $(cat ../../links)
do
    orig=$(echo $i | cut -d: -f1)
    dest=$(echo $i | cut -d: -f2)
    ln -sf $orig $dest
done
