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
	"build:types": "npx tsc --project tsconfig.types.json"
}
```

Search for `// TOCONFIGURE` comments to find the places the configs should be manually configured before using.
```bash
grep "// TOCONFIGURE" tsconfig.json tsconfig.types.json -H -n --color
```
