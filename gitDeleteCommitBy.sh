#!/bin/sh

git filter-branch -f --commit-filter '

if [ "$GIT_COMMITTER_EMAIL" = "rowland.oflaherty@gmail.com" ]
then
    skip_commit "$@";
else
    git commit-tree "$@";
fi
if [ "$GIT_AUTHOR_EMAIL" = "rowland.oflaherty@gmail.com" ]
then
    skip_commit "$@";
else
    git commit-tree "$@";
fi
'
