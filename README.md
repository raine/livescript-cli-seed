# livescript-cli-boilerplate

```
.
├── package.json
├── README.md
├── Makefile
├── bin
│   └── hello-world
├── src
│   └── index.ls
└── test
    └── basic.ls
```

#### Running locally

```sh
lsc src/index               # or
make; node bin/hello-world  # 
```

#### Install the script globally in localhost

```sh
make install
hash -r; hello-world
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
