#!/bin/bash
echo "" > index.md

# Physics Section
echo "**Physics**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Physics) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# English Section
echo "**English**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep English) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
echo "" >> index.md

# History Section
echo "**History**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep History) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# Marketing Section
echo "**Marketing**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Marketing) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# Math Section
echo "**Math**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Math) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# Video-Film Section
echo "**Video-Film**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep Video-Film) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md
