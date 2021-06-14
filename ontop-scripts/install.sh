#!/bin/bash
IFS=$'\n\t'
set -euo pipefail

if [ -d "./ontop" ];
then
  echo "ontop already insalled"
else
  # install ontop
  mkdir ontop
  cd ontop
  wget https://github.com/ontop/ontop/releases/download/ontop-4.0.0/ontop-cli-4.0.0.zip
  unzip ontop-cli-4.0.0.zip
  cd ..
  # install mysql driver
  cp mysql-connector-java-5.1.49/mysql-connector-java-5.1.49.jar ontop/jdbc/
fi
