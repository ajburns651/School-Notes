#!/bin/bash
echo "Links to Different Notes" > index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">title=|' filesnew.txt
echo "$(cat files.txt)" | sed 's:.*/::' > filesnobefore.txt
echo $(paste -d'\0' filesnew.txt files.txt) >> filesnewest.txt
sed -i -e 's|$|></a>|' filesnewest.txt
