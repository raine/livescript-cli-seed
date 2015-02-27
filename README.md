# livescript-cli-boilerplate :nut_and_bolt:

a simple template for [LiveScript](http://livescript.net/) CLI apps

- comes with sourcemaps enabled ([gkz/LiveScript #675](https://github.com/gkz/LiveScript/pull/675))
- makefile with common tasks
- [launch node with harmony features](https://github.com/raine/livescript-cli-boilerplate/blob/master/bin/cli-harmony-example)

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

#### running locally

```sh
lsc src/index               # or
make; node bin/hello-world  # 
```

#### install the script globally in localhost

```sh
make install
hello-world
```

#### publish to npm

```sh
npm version minor  # bump version
make publish
```

#### run tests

```sh
make test
```
