#!/usr/bin/env bash

vendorPath=$(pwd)'/node_modules'

viewVersion='master'
dataVersion='master'

cd ${vendorPath}
git clone --single-branch -b master https://github.com/bem-site/bem-lib-site-view.git
git clone --single-branch -b master https://github.com/bem-site/bem-lib-site-data.git

cd ${vendorPath}'/bem-lib-site-view' && git checkout ${viewVersion} && npm install
cd ${vendorPath}'/bem-lib-site-data' && git checkout ${dataVersion} && npm install
