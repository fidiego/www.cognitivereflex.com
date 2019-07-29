#! /bin/sh

echo '*** DEPLOY: Installing PostCSS CLI'
npm install postcss-cli

echo '*** DEPLOY: Installing Tailwinds Theme Dependencies'
cd themes/tailwinds-theme
npm install

echo '*** DEPLOY: Returning to Project Root'
cd ../../
ls

echo '*** DEPLOY: Buliding Project with Hugo'
hugo
