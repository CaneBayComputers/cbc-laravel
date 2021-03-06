#!/bin/bash

set -e

find storage/framework -maxdepth 1 -type d -exec chmod 777 {} +

chmod 777 storage/logs

chmod 777 storage/temp

chmod 777 bootstrap/cache

composer --ignore-platform-reqs install

npm install

npm run dev