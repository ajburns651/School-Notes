#!/bin/bash
echo "" > index.md

# Gov Section
echo "**Gov**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Gov) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md
