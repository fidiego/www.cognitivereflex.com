#! /bin/sh

echo '\n*** DEPLOY: Installing PostCSS CLI\n'
npm install postcss-cli

echo '\n*** DEPLOY: Installing Tailwinds Theme Dependencies\n'
cd themes/tailwinds-theme
npm install

echo '\n*** DEPLOY: Returning to Project Root\n'
cd ../../
ls

echo '\n*** DEPLOY: Building Project with Hugo\n'
hugo
