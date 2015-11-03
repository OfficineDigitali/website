#!/bin/sh

for i in `ls | grep -v jekyll-src | grep -v build.sh`
do
        rm -rf $i
done

cd jekyll-src
jekyll build
cd ..
mv jekyll-src/built/* .
rm -rf jekyll-src/built/
