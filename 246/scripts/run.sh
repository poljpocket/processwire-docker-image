#!/bin/bash

if [[ -d ./site/assets ]]; then
  # site profile present, so we can remove the blank profile
  rm -rf site-blank
else
  # this is a blank installation, so copy over blank profile
  cp -rT site-blank site
fi;

# ProcessWire is installed, so remove installer file
if [[ -f ./site/assets/installed.php ]]; then
  rm -f install.php
fi;

# mod the www-data user to reflect outside user IDs
usermod -u $WEB_USER_ID www-data
groupmod -g $WEB_GROUP_ID www-data

# reflect changes in files too
chown -R www-data:www-data .

exec apache2-foreground
