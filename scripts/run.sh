#!/bin/bash

usermod -u $WEB_USER_ID www-data

if [[ ! -f ./site/assets/installed.php ]]; then
  cp -rT site-blank site
  chown -R www-data:www-data site
else
  rm -rf site-blank
  rm -f install.php
fi;

exec apache2-foreground
