#!/bin/bash

mkdir tmp; cd tmp;
VERSION=`curl https://github.com/mholt/caddy/releases/latest | grep -o "v[0-9\.]\+"`;
wget https://github.com/mholt/caddy/releases/download/${VERSION}/caddy_linux_amd64.tar.gz;
tar -xvf caddy_linux_amd64.tar.gz;
cd ..;
cp tmp/caddy caddy;
rm -rf tmp;
