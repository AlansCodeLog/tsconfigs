#!/usr/bin/env bash

echo "Copying tsconfig.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.json tsconfig.json
echo "Copying tsconfig.types.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
echo "Copying tsconfig.eslint.json"
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.eslint.json tsconfig.eslint.json
echo "==========================================================="
echo "Be sure to have the following in your package.json scripts:"
echo ""
echo '"build:types": "tsc -p tsconfig.types.json --emitDeclarationOnly && npm run build:types:fix",'
echo '"build:types:fix": "tsc-alias -p tsconfig.types.json --debug"'
echo ""
echo "and configure eslint to use tsconfig.eslint.json:"
echo ""
echo 'parserOptions: {'
echo '	parser: "@typescript-eslint/parser",'
echo '	project: "tsconfig.eslint.json",'
echo '	extraFileExtensions: [".vue"], //fixes eslint not linting vue files'
echo '}, '
