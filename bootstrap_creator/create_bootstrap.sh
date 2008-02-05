#!/bin/sh

CURRENT_BOOTSTRAPPER_VSN="V4"
FILENAME=otp-base-installer-$CURRENT_BOOTSTRAPPER_VSN.sh

cd $(dirname $0)

cd ../
tar -zcvf contents.tar.gz Makefile README build lib licence.txt release tools
cd -
mv ../contents.tar.gz . 

cat header.txt > $FILENAME
cat contents.tar.gz >> $FILENAME
rm contents.tar.gz

chmod +x $FILENAME
echo "done creating $FILENAME"
