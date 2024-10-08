#!/usr/bin/env bash

echo "Copying tsconfig.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.json tsconfig.json
echo "Copying tsconfig.types.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
echo "==========================================================="
echo "Be sure to have the following in your package.json scripts:"
echo ""
echo '"build:types": "tsc -p tsconfig.types.json --emitDeclarationOnly",'
echo ""
