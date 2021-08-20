#!/bin/bash
echo "" > index.md

# AdvBusMgmt Section
echo "**AdvBusMgmt**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep AdvBusMgmt) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# APCompSciPrinc Section
echo "**APCompSciPrinc**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep APCompSciPrinc) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
echo "" >> index.md

# APLit Section
echo "**APLit**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep APLit) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# APStats Section
echo "**APStats**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep APStats) > files.txt
sed -e 's/^/<a href="/' files.txt > filesnew.txt
sed -i -e 's|$|">|' filesnew.txt
echo "$(cat files.txt)" | sed -et -e's|/|&\n|1;/\n/D' | tr / " "  > filesnobefore.txt
sed -i -e 's/\.[^.]*$//' filesnobefore.txt
paste -d'\0' filesnew.txt filesnobefore.txt > filesnewest.txt
sed -i -e 's|$|</a>|' filesnewest.txt
sed -e '0~1 a\\' filesnewest.txt >> index.md
rm -rf files.txt filesnew.txt filesnobefore.txt filesnewest.txt
echo "" >> index.md

# Calc3 Section
echo "**Calc3**" >> index.md
echo "" >> index.md
printf "%b\n" $(git ls-tree -r main --name-only | grep html | grep

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
