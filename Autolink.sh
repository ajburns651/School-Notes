#!/bin/bash
echo "Links to Different Notes" > index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html) > files.txt
sed -i -e 's/^/<a href="/' files.txt
sed -i -e 's/$/">/' files.txt
cat files.txt >> index.md
