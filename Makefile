.PHONY: test

SRC = $(shell find src -name "*.ls" -type f | sort)
LIB = $(SRC:src/%.ls=lib/%.js)

MOCHA = ./node_modules/.bin/mocha
LSC = node_modules/.bin/lsc
NAME = $(shell node -e "console.log(require('./package.json').name)")
REPORTER ?= spec
GREP ?= ".*"
MOCHA_ARGS = --grep $(GREP) --compilers ls:livescript --recursive

default: all

lib:
	mkdir -p lib/

lib/%.js: src/%.ls lib
	$(LSC) --compile --map=linked --output lib "$<"

all: compile

compile: $(LIB) package.json

install: clean all
	npm install -g .

reinstall:
	make uninstall
	make install

uninstall:
	npm uninstall -g ${NAME}

dev-install: package.json
	npm install .

clean:
	rm -rf lib

publish: all test
	git push --tags origin HEAD:master
	npm publish

test:
	@$(MOCHA) $(MOCHA_ARGS) --reporter $(REPORTER)

test-w:
	@$(MOCHA) $(MOCHA_ARGS) --reporter min --watch
