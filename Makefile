.DEFAULT_GOAL := help

.PHONY: all docs help clean

all: docs clean

help:
	@echo 'Usage: make [target] ...'
	@echo ''
	@echo '    make docs'
	@echo ''

docs:
	mkdocs build -s -v

docs-serve:
	mkdocs serve

clean:
	rm -rf site || true
