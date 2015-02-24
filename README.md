# livescript-cli-boilerplate

```
.
├── package.json <--- make it yours
├── README.md
├── Makefile <--- no changes necessary, plug and play
├── bin
│   └── cli
├── src
│   └── index.ls <--- write mad fp codez here
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
