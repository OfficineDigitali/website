#!/bin/sh

host=`hostname`
if [ "$host" = "hs1" ]
then
	echo "NON LANCIARE SUL SERVER DI PRODUZIONE"
	exit
fi

for i in `ls | grep -v jekyll-src | grep -v build.sh | grep -v README`
do
        rm -rf $i
done

cd jekyll-src
jekyll build
cd ..
mv jekyll-src/built/* .
rm -rf jekyll-src/built/
