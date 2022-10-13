#!/bin/bash

set -ex

# GITHUB_REF_NAME=app-v9.46.5
# GITHUB_REF_NAME=${GITHUB_REF_NAME#app-v}
version=${GITHUB_REF_NAME#app-v}

echo "Downloading CyberChef"

rm -rf dist
mkdir -p dist
cd dist
curl -L https://github.com/gchq/CyberChef/releases/download/v${version}/CyberChef_v${version}.zip > cyberchef.zip
unzip cyberchef.zip
rm cyberchef.zip
mv *.html index.html
