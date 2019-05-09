#!/bin/bash

echo "This script needs wget"
echo "Downloading databases from http://klif.uu.nl/download/cgmlst_db/"
echo "Please be patient. This is a large download"
echo
echo "Download cgmlst databases"
wget http://klif.uu.nl/download/cgmlst_db/db.tar.gz
echo "unzipping files"
tar xzvf db.tar.gz
echo "Done"
echo ""
exit 1