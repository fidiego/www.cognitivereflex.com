#! /bin/sh

echo 'Installing PostCSS CLI'
npm install postcss-cli

echo 'Installing Tailwinds Theme Dependencies'
cd themes/tailwinds-theme
npm install

echo 'Returning to Project Root'
cd ../../
ls

echo 'Buliding Project with Hugo'
hugo
