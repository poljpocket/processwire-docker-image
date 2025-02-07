#!/bin/bash

git clone --depth 1 --branch "3.0.244" https://github.com/processwire/processwire.git .

git apply /scripts/fix-repeater-matrix-problem-in-3.0.244.patch

rm -rf .git

chown -R www-data:www-data .

mv htaccess.txt .htaccess
