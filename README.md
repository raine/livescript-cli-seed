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

#### Install the script globally in localhost

```sh
make install
hash -r; my-script
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
