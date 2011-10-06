#!/bin/sh

# sudo apt-get install mercurial

#VERSION=4.3.0.20110221
VERSION=`dpkg-parsechangelog | grep '^Version' | cut -d' ' -f2 | cut -f1 -d-`
REV=3b29676188d5

# no tag ? Let's use branch:
hg clone https://bitbucket.org/syntext/serna-free-4-4
GZIP="--best --no-name" hg archive -R serna-free-4-4 -r $REV -p serna-free-$VERSION serna-free_$VERSION.orig.tar.gz

cd debian/3rd
wget -c http://downloads.syntext.com/serna/opensource/3rd/DITA-OT1.4_fullpackage_bin.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/PyQt-x11-gpl-4.5.4.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/Python-2.6.2.tar.bz2
wget -c http://downloads.syntext.com/serna/opensource/3rd/QScintilla-gpl-2.4.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/antlr-2.7.1.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/aspell-0.50.5.tar.bz2
wget -c http://downloads.syntext.com/serna/opensource/3rd/docbook-xsl-1.68.1.tar.bz2
wget -c http://downloads.syntext.com/serna/opensource/3rd/doxygen-1.5.1.src.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/jdk-linux-1.6.0.tar.bz2
wget -c http://downloads.syntext.com/serna/opensource/3rd/libiconv-1.11.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/libxml2-2.6.27.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/libxslt-1.1.19.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/qt-all-opensource-src-4.5.3.tar.bz2
wget -c http://downloads.syntext.com/serna/opensource/3rd/qtpropertybrowser-2.5-opensource.tar.gz
wget -c http://downloads.syntext.com/serna/opensource/3rd/sip-4.8.2.tar.gz
wget -O hunspell-bin-1.3.tgz -c http://sourceforge.net/projects/hunspell/files/Hunspell/1.3.2/hunspell-1.3.2.tar.gz
cd ../..
