#!/bin/bash

echo "- creating ncbi common tree"
cd taxiphy
./taxiphy.py ncbi -o ncbi-common-tree.txt
mv ncbi-common-tree.txt ../ncbi-common-tree
cd ../ncbi-common-tree

echo "- uploading to sckott/ncbi-common-tree"
git commit -am "updated ncbi common tree"
git push 

echo "- done"
