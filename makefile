MAKEFLAGS += --silent

markdown_changed_files=$(shell git status --porcelain | cut -c 1-3 --complement | egrep .md$)
now=$(shell date '+%F-%H-%M-%S-%N')

lint:
ifneq ($(shell echo "${markdown_changed_files}" | grep -o .md),)
	docker run -t --rm \
		-v ${PWD}:/workdir \
		--entrypoint="markdownlint-cli2-config" \
		davidanson/markdownlint-cli2:latest \
		".markdownlint-cli2.jsonc" "${markdown_changed_files}"
endif

lint-all:
	echo "running linter on all files"
	$(MAKE) lint markdown_changed_files="**/*.md"

build:
	-[ -f content/default/README.md ] && rm -f content/default/README.md
	docker run --rm \
		-v ${PWD}:/src \
		--user $(shell id -u):$(shell id -g) \
		klakegg/hugo:alpine \
		new default/README.md
	mv -f content/default/README.md ./README.md
	$(MAKE) lint markdown_changed_files="README.md" >/dev/null

.PHONY: lint
