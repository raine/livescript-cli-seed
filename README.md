# livescript-cli-boilerplate :nut_and_bolt:

a simple template for [LiveScript][livescript] CLI apps

- makefile with common tasks
- comes with sourcemaps enabled ([gkz/LiveScript #675](https://github.com/gkz/LiveScript/pull/675))
- [use harmony features](https://github.com/raine/livescript-cli-boilerplate/blob/master/bin/cli-harmony-example)
- parsing `process.argv` is up to you, [optionator][optionator] or [minimist][minimist] is recommended

```
├── package.json
├── README.md
├── Makefile
├── bin
│   ├── cli
│   └── cli-harmony-example
├── src
│   └── index.ls
└── test
    └── basic.ls
```

## run

```sh
lsc src/index       # or
make; node bin/cli  #
```

## render readme.tmpl.md to readme.md

```
make readme
```

## install the script globally

```sh
make install
hello-world
```

## publish to npm

```sh
npm version minor  # bump version
make publish
```

## run tests

```sh
make test
make test-w  # watch
REPORTER=nyan make test
```

[livescript]: http://livescript.net
[optionator]: https://github.com/gkz/optionator
[minimist]: https://github.com/substack/minimist

## inspiration

- [ramda-cli](https://github.com/raine/ramda-cli)
- [ez-jenkins](https://github.com/raine/ez-jenkins)
- [markdown-table-cli](https://github.com/raine/markdown-table-cli)
- [tunnit](https://github.com/raine/tunnit)
