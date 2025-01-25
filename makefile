lint:
	docker run -t --rm \
		-v ${PWD}:/workdir \
		davidanson/markdownlint-cli2:v0.12.1 \
		"**/*.md" --fix

build:
	docker run --rm \
		-v ${PWD}:/src \
		--user $(shell id -u):$(shell id -g) \
		hugomods/hugo:std-base-non-root-0.142.0 \
		sh -c "hugo new -f readme.pt.md ; hugo new -f readme.en.md"
	[ -f ./content/readme.en.md ] && mv ./content/readme.en.md ./README.en-us.md
	[ -f ./content/readme.pt.md ] && mv ./content/readme.pt.md ./README.md
