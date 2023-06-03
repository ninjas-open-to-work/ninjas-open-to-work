MAKEFLAGS += --silent

markdown_changed_files=$(shell git status --porcelain | cut -c 1-3 --complement | egrep .md$)

lint:
ifneq ($(shell echo "${markdown_changed_files}" | grep -o .md),)
	@docker run -t --rm \
		-v ${PWD}:/workdir \
		--entrypoint="markdownlint-cli2-config" \
		davidanson/markdownlint-cli2:latest \
		".markdownlint-cli2.jsonc" "${markdown_changed_files}"
endif

lint-all:
	@echo "running linter on all files"
	@$(MAKE) lint markdown_changed_files="**/*.md"

.PHONY: lint
