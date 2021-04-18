#!/bin/bash
echo "Links to Different Notes" > index.md
echo "" >> index.md

# Physics Section
echo "**Physics**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Physics) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed 's:.*/::' > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -e 's|$|</a>|' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# English Section
echo "**English**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep English) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed 's:.*/::' > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -e 's|$|</a>|' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md
