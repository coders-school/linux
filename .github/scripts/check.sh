#!/bin/bash
source functions.sh

FILE=$1
fileExist ${FILE}

P=processes\.txt
C=copy\.txt
S=selected\.txt
M=commands\.txt

echo "🔎 Performing checks"
echo
pattern ${FILE} "Directory created" "mkdir(\s+)"
pattern ${FILE} "'$P' created" "touch(\s+)(.*/)*$P"
pattern ${FILE} "'ps aux > $P' used" "ps(\s+)[-]?aux(\s*)>{1,2}(\s*)(.*/)*$P"
pattern ${FILE} "'$P' copied to '$C''" "cp(\s+).*$P(\s+)(.*/)*$C"
pattern ${FILE} "'backup' directory created'" "mkdir(\s+)backup"
pattern ${FILE} "'$C' moved into 'backup' directory" "mv(\s+).*$C(\s+)(\.\/)?backup|mv(\s+)\.\.\/$C(\s+)\."
pattern ${FILE} "Lines counted and saved to '$S'" "wc(\s+)(-.*l.*)?(.*/)*$P(\s+)>{1,2}(\s+)(.*/)*$S"
pattern ${FILE} "Grepped with line numbers for '/bin' in '$P' and appended to $S" "grep(\s+)((-.*n.*)[\"']?\/bin[\"']?(\s+)|[\"']?\/bin[\"']?(\s+)(-.*n.*))(.*/)*$P(\s+)>>(\s+)(.*/)*$S"
pattern ${FILE} "'history' with 'tail' used and saved to $M" "history(\s*)\|(\s*)tail(\s+)-n?(\s*)[[:digit:]]+(\s+)>{1,2}(\s+)$M"
pattern ${FILE} "'cat $S $M' used" "cat(\s+)(.*/)*$S(\s+)(.*/)*$M"
echo

summary
