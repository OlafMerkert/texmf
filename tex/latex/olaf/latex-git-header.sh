#!/bin/zsh

export LC_ALL=C
export LANG=C

# determine the current commit
commit=`git log -1 --format=%h`

print "\\\ihead*{\\\textsf{\\\footnotesize document:} \\\texttt{\\\jobname}}"
print "\\\ohead*{\\\textsf{\\\footnotesize commit:}  \\\texttt{$commit}}"

