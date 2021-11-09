#!/bin/bash

cd /home/keb/Documents/School-Org-Notes/content/School/

#Advanced Business Management Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep AdvBusMgmt)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./AdvancedBusinessManagement.org
echo "* Notes" >> ./AdvancedBusinessManagement.org
cat final.txt >> ./AdvancedBusinessManagement.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt

#APComputer Science Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep APCompSciPrinc)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./APComputerScience.org
echo "* Notes" >> ./APComputerScience.org
cat final.txt >> ./APComputerScience.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt

#Calculus 3 Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep Calc3)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./Calculus3.org
echo "* Notes" >> ./Calculus3.org
cat final.txt >> ./Calculus3.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt

#APStats Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep APStats)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./APStatistics.org
echo "* Notes" >> ./APStatistics.org
cat final.txt >> ./APStatistics.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt

#Government/Econ Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep Gov)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./History.org
echo "* Notes" >> ./History.org
cat final.txt >> ./History.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt

#AP Lit Section
printf "%b\n" "$(git ls-tree -r main --name-only | grep org | grep APLit)" > list.txt
sed 's/^/\//' list.txt > withslash.txt
sed 's/^/- [[./' withslash.txt > beginningdone.txt
sed -i 's/$/][&/' beginningdone.txt #Adds end of link brackets and adds beginning of description
echo "$(cat list.txt)" | sed 's/^.*[/]//' > filenameonly.txt
sed -i -e 's/\.[^.]*$//' filenameonly.txt #removes.org extension
paste -d'\0' beginningdone.txt filenameonly.txt > withoutending.txt #Pastes the names after the start of the description from line 7
sed 's/$/]]&/' withoutending.txt > final.txt #Adds the end of the link
sed -i '/* Notes/,+100 d' ./Literature.org
echo "* Notes" >> ./Literature.org
cat final.txt >> ./Literature.org #Pastes the names after the start of the description from line 7
rm -rf list.txt withslash.txt beginningdone.txt filenameonly.txt withoutending.txt final.txt
