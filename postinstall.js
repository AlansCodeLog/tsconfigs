let yellow = "\x1b[33m"
let reset = "\033[0m"
let message = yellow +
`@alanscodelog/tsconfigs: Don't forget to run the install script:
Note: This will overwrite "tsconfig.json" and "tsconfig.types.json"
./node_modules/@alanscodelog/tsconfigs/install.sh`
	+ reset
console.log(message)
