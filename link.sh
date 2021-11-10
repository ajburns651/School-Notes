#!/bin/bash

cd /home/keb/Documents/School-Org-Notes/content/School/

# Define classes as a list of variables
class=(AdvBusMgmt APCompSciPrinc Calc3 APStats Gov APLit)
homepage=(AdvancedBusinessManagement.org APComputerScience.org Calculus3.org APStatistics.org History.org Literature.org)

# Create Links to Note Files for Homepages
for ((i = 0; i < ${#class[@]}; i++)); do

printf "%b\n" $(git ls-tree -r main --name-only | grep org | grep ${class[$i]}) > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./"${homepage[$i]}"
echo "* Notes" >> ./"${homepage[$i]}"
cat final.txt >> ./"${homepage[$i]}" #Pastes the names after the start of the description from line 7

done
