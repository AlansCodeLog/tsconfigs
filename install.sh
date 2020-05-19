#!/usr/bin/env bash

echo "Copying tsconfig.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.json tsconfig.json
echo "Copying tsconfig.types.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
echo "==========================================================="
echo "Don't forget to configure the \"// TOCONFIGURE\" comments :"
echo "==========================================================="
echo "Searching... (grep \"// TOCONFIGURE\" tsconfig.json tsconfig.types.json -H -n -A1 --color)"
echo ""
grep "// TOCONFIGURE" tsconfig.json tsconfig.types.json -H -n -A1 --color
