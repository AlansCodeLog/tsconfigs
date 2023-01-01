[![Release](https://github.com/alanscodelog/my-tsconfigs/workflows/Release/badge.svg)](https://www.npmjs.com/package/@alanscodelog/tsconfigs)

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
or copy [this](https://github.com/AlansCodeLog/my-tsconfigs/blob/master/copy/tsconfig.json) to `tsconfig.json`.


For generating types:
```bash
cp ./node_modules/@alanscodelog/tsconfigs/copy/tsconfig.types.json tsconfig.types.json
```
or copy [this](https://github.com/AlansCodeLog/my-tsconfigs/blob/master/copy/tsconfig.types.json) to `tsconfig.types.json`.

Then add a script to the `package.json`:
```json
"scripts": {
	"build:types": "tsc -p tsconfig.types.json && npm run build:types:fix",
	"build:types:fix": "tsc-alias -p tsconfig.types.json --debug",
}
```

This requires installing tsc-alias.

Search for `// TOCONFIGURE` comments to find the places the configs should be manually configured before using.
```bash
grep "// TOCONFIGURE" tsconfig.json tsconfig.types.json -H -n -A1 --color
```

# Notes

- While it's possible to extend from different configs, e.g. `@alanscodelog/tsconfigs/types` by placing a `tests.json` file, typescript doesn't allow extending from *multiple* configs, so in a project you can't, for example, extend from a modified `tsconfig.json` and `@alanscodelog/tsconfigs/types`. That's why the types config is copied instead.
