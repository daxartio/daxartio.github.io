.DEFAULT_GOAL := help

.PHONY: docs help clean


help:
	@echo 'Usage: make [target] ...'
	@echo ''
	@echo '    make docs'
	@echo ''

docs:
	mkdocs build -s -v

clean:
	rm -rf docs/cli.md || true
	rm -rf site || true
