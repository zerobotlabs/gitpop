NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m
REVISION=$(shell git rev-parse --short HEAD)
APP=gitpop

all: build

build:
	@echo "$(OK_COLOR)==> Building $(APP) ...$(NO_COLOR)"
	@script/build $(APP)

.PHONY: all build