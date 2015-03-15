#!/usr/bin/env bash
set -e # halt script on error

cd ./_site
find . -type f -exec curl -u $ANOVA_USER:$ANOVA_PASSWORD --ftp-create-dirs -T {} ftp://aikido-nova.org/htdocs/{} \;
#find . -type f -exec ls {} \;
