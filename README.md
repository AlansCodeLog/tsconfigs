[![Release](https://github.com/alanscodelog/tsconfigs/actions/workflows/release.yml/badge.svg)](https://github.com/alanscodelog/tsconfigs/actions/workflows/release.yml)
[![NPM Version (with latest tag)](https://img.shields.io/npm/v/%40alanscodelog%2Ftsconfigs/latest)](https://www.npmjs.com/package/@alanscodelog/tsconfigs/v/latest)

# Install

My typescript configs.


```
yarn add -D @alanscodelog/tsconfigs \
&& ./node_modules/@alanscodelog/tsconfigs/install.sh
```
Note: The last command will overwrite `tsconfig.json` and `tsconfig.types.json` if it exists.

# Manual Setup
```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.json tsconfig.json
```
or copy [this](https://github.com/AlansCodeLog/tsconfigs/blob/master/copy/tsconfig.json) to `tsconfig.json`.


For generating types:
```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
```
or copy [this](https://github.com/AlansCodeLog/tsconfigs/blob/master/copy/tsconfig.types.json) to `tsconfig.types.json`.

Then add a script to the `package.json`:
```json
"scripts": {
	"build:types": "tsc -p tsconfig.types.json --emitDeclarationOnly",
}
```
