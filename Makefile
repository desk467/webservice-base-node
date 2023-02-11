all: run

setup:
	@docker build . --target=base

test:
	@docker build . --target="testing"

lint:
	@docker build . --target="lint"

run:
	@docker build . --target="production" --tag="base_node:latest"
	@docker run -p 3000:3000 --rm -it base_node:latest
