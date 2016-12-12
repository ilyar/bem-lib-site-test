#!/usr/bin/env bash

vendorPath=$(pwd)'/node_modules'

viewVersion='master'
dataVersion='7f13647f68a56e0b6972ce7131b7cb78eb8caa93'

cd ${vendorPath}
git clone --single-branch -b master https://github.com/bem-site/bem-lib-site-view.git
git clone --single-branch -b master https://github.com/bem-site/bem-lib-site-data.git

cd ${vendorPath}'/bem-lib-site-view' && git checkout ${viewVersion} && npm install
cd ${vendorPath}'/bem-lib-site-data' && git checkout ${dataVersion} && npm install
