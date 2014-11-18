#!/bin/zsh

export LC_ALL=C
export LANG=C

# determine the branch name
branch=`git branch | egrep '^\*'`
branch=${branch/* /}

# determine the current commit
commit=`git log -1 --format=%h`

# determine whether there are pending changes
clean=`git status | grep "working directory clean"`

# determine when the last commit occured
date=`git log -1 --format="%ci"`

cdate=`date +"%F %T %z"`

# output for LaTeX:
print "\\\noindent"
# print "{\\\textit{Version information:} \\\\\\"
print "{\\\textsf{\\\footnotesize document:} \\\texttt{\\\jobname}} \\\quad"
print "{\\\textsf{\\\footnotesize branch:}  \\\verb|$branch|} \\\quad"
print "{\\\textsf{\\\footnotesize commit:}  \\\verb|$commit|}"


if [[ -z "$clean" ]]; then
    print "\\\hfill \\\textbf{*}"
fi

print " \\\\\\"
print "{\\\textsf{\\\footnotesize commit date:}    \\\texttt{$date}} \\\\\\"
print "{\\\textsf{\\\footnotesize compile date:}   \\\texttt{$cdate}}"

# print "}"
