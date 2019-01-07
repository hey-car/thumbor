CONFIG_PATH := `pwd`/config
DOCKER_BIN := `which docker`
TAG := "heycar/thumbor:0.4.0"

default: build

.PHONY: build
build:
	$(DOCKER_BIN) build . -t $(TAG)

.PHONY: push
push:
	$(DOCKER_BIN) push $(TAG)

.PHONY: release
release: build push

.PHONY: run
run:
	$(DOCKER_BIN) run --rm -it -p 127.0.0.1:7000:7000 -v $(CONFIG_PATH):/config/ $(TAG)
