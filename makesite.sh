#!/bin/sh
# Lots of hard coded foo here. This is very digithink.com specific.
{   echo "====================== Start Build `date`==================="
    cd /var/www/3dangst/repo
    git pull && mkdocs build
    rm -rf ../osite
    mv ../site ../osite
    mv site ..
    echo "======================= End Build `date`===================="
}| tee logs/makesite.out

