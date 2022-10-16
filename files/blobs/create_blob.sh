#!/bin/bash
set -e

echo "Creating data blob for download to /tmp/blob..."
sleep 5
rm -rf /tmp/blob/
mkdir -p /tmp/blob/bin
cp -v run*.sh /tmp/blob/bin
cp -v *.sql /tmp/blob/bin
cp -v *.py /tmp/blob/bin
cp -v crontab.txt /tmp/blob/bin
cp -v ticker-list.txt /tmp/blob/bin
cd /tmp/blob
tar zcf blob.tar.gz bin/
echo "rhswkyf9dhs8fkjdsU**(@jlkdd90ddd" | gpg --batch --passphrase-fd 0 -c --cipher aes256 --output /tmp/blob/xsbootstrap.blob /tmp/blob/blob.tar.gz

echo "Done. Now upload /tmp/blob/xsbootstrap.blob to:"
echo "https://github.com/etheling/lost-found/tree/main/files/blobs/"
echo ""
