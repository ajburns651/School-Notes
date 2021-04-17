#!/bin/bash
echo "Links to Different Notes" > index.md
for i in $(git ls-tree -r main --name-only | grep html)
do
         echo "<a href=$i>title=$i>$i</a>" >> index.md
done
