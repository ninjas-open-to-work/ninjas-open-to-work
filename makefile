MAKEFLAGS += --silent

lint:
	docker run -t --rm \
		-v ${PWD}:/workdir \
		davidanson/markdownlint-cli2:v0.12.1 \
		"**/*.md" --fix

build:
	[ -f content/default/README.md ] && rm -f content/default/README.md
	docker run --rm \
		-v ${PWD}:/src \
		--user $(shell id -u):$(shell id -g) \
		klakegg/hugo:alpine \
		new default/README.md
	mv -f content/default/README.md ./README.md

.PHONY: lint
