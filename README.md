# livescript-cli-boilerplate

```
.
├── package.json
├── README.md
├── Makefile
├── bin
│   └── my-script
├── src
│   └── index.ls
└── test
    └── basic.ls
```

#### Running locally

```sh
lsc src/index             # or
make; node bin/my-script  # 
```

#### Install the script locally

```sh
make install
make reinstall
```

#### Publish to npm

```sh
npm version minor  # bump version
make publish
```

#### Run tests

```sh
make test
```
