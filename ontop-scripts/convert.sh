#!/bin/bash
IFS=$'\n\t'
set -euo pipefail

if [ -d "./ontop" ]
then
  echo "ontop has already been installed"
else
  source ./install.sh
fi

touch triples.nt
BEFORE=$(wc -l triples.nt)
./ontop/ontop materialize -m ../src-gen/mapping.r2rml.ttl -f ntriples -o ./triples.nt -p mysql.properties

# show triples count before/after
AFTER=$(wc -l triples.nt)
echo "wc -l triples.nt BEFORE: $BEFORE"
echo "wc -l triples.nt AFTER:  $AFTER"
