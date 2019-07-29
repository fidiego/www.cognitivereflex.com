#! /bin/sh

echo '\n*** DEPLOY: HUGO_ENV='$(HUGO_ENV)
export HUGO_ENV="production"
export HUGO_ENABLEGITINFO="true"
hugo env

echo '\n*** DEPLOY: Installing PostCSS CLI\n'
npm install -g postcss-cli
npm install -g autoprefixer

echo '\n*** DEPLOY: Installing Tailwinds Theme Dependencies\n'
cd themes/tailwinds-theme
echo 'Directory: ' $(pwd)
ls
npm install

echo '\n*** DEPLOY: Returning to Project Root\n'
cd ../../
echo 'Directory: ' $(pwd)
ls

echo '\n*** DEPLOY: Building Project with Hugo\n'
hugo --enableGitInfo
