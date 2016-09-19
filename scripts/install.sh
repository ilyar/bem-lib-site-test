#!/usr/bin/env bash

rootPath=$(pwd)
vendorPath=${rootPath}'/node_modules'

rm -fr ${vendorPath}
mkdir -p ${vendorPath}

cd ${vendorPath}
git clone --single-branch -b master git@github.com:bem-site/bem-lib-site-view.git
git clone --single-branch -b master git@github.com:bem-site/bem-lib-site-data.git

cd ${vendorPath}'/bem-lib-site-view' && bower install && npm install
cd ${vendorPath}'/bem-lib-site-data' && npm install
