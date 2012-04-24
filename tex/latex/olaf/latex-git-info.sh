#!/bin/zsh

# determine the branch name
branch=`git branch | egrep '^\*'`
branch=${branch/* /}

# determine the current commit
commit=`git log -1 --format=%t`

# determine whether there are pending changes
clean=`git status | grep "working directory clean"`

# determine when the last commit occured
date=`git log -1 --format="%ci"`


# output for LaTeX:
print "\\\noindent"
# print "{\\\textit{Version information:} \\\\\\"
print "{\\\textsf{\\\footnotesize branch:}  \\\verb|$branch|} \\\quad"
print "{\\\textsf{\\\footnotesize commit:}  \\\verb|$commit|} \\\\\\"
print "{\\\textsf{\\\footnotesize commit date:}    \\\textrm{$date}}"

if [[ -z "$clean" ]]; then
    print "\\\hfill \\\textbf{*}"
fi
# print "}"
