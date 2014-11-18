#!/bin/zsh

export LC_ALL=C
export LANG=C

# determine the current commit
commit=`git log -1 --format=%h`

print "\\\lhead{\\\textsf{\\\footnotesize document:} \\\texttt{\\\jobname}}"
print "\\\rhead{\\\textsf{\\\footnotesize commit:}  \\\texttt{$commit}}"

