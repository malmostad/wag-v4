#!/usr/bin/env sh

# Run before deployment of the _site

echo "Building site"
jekyll build

echo "Compressing Coffee files"
cd _site/javascripts
uglifyjs application.js > _temp.js
rm application.js
mv _temp.js application.js
cd ..
echo "Output generated to _site"
