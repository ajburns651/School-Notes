#!/bin/bash
echo "Links to Different Notes" > index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">Wow</a>|' filesnew.txt
cat filesnew.txt >> index.md
