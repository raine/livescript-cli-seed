# livescript-cli-boilerplate :nut_and_bolt:

```
├── package.json   <── make it yours
├── README.md
├── Makefile   <── no changes necessary, plug and play
├── bin
│   └── cli
├── src
│   └── index.ls   <── write mad fp codez here
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
hash -r; hello-world
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
