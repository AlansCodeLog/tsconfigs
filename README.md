[![Release](https://github.com/alanscodelog/tsconfigs/workflows/Release/badge.svg)](https://www.npmjs.com/package/@alanscodelog/tsconfigs)

# Install

My typescript configs.


```
yarn add -D @alanscodelog/tsconfigs \
&& ./node_modules/@alanscodelog/tsconfigs/install.sh
```
Note: The last command will overwrite `tsconfig.json`, `tsconfig.types.json` and `tsconfig.eslint.json` if it exists.

# Manual Setup
```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.json tsconfig.json
```
or copy [this](https://github.com/AlansCodeLog/tsconfigs/blob/master/copy/tsconfig.json) to `tsconfig.json`.


For eslint:

```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.eslint. json tsconfig.eslint. json
```
or copy [this](https://github.com/AlansCodeLog/tsconfigs/blob/master/copy/tsconfig.eslint.json) to `tsconfig.eslint.json`.

This has been seperated out into it's own config because eslint is driving me insane with it's file is not included in the tsconfig error.

Eslint must be told to use this tsconfig instead:

```js
	parserOptions: {
		parser: "@typescript-eslint/parser",
		project: "tsconfig.eslint.json",
		extraFileExtensions: ['.vue'], // fixes eslint not linting vue files
	}
```


For generating types:
```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
```
or copy [this](https://github.com/AlansCodeLog/tsconfigs/blob/master/copy/tsconfig.types.json) to `tsconfig.types.json`.

Then add a script to the `package.json`:
```json
"scripts": {
	"build:types": "tsc -p tsconfig.types.json --emitDeclarationOnly && npm run build:types:fix",
	"build:types:fix": "tsc-alias -p tsconfig.types.json --debug"
}
```

This requires installing tsc-alias.
