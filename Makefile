.DEFAULT_GOAL := help
POETRY_RUN = poetry run

.PHONY: all docs docs-serve help clean

all: docs clean

help:
	@echo 'Usage: make [target] ...'
	@echo ''
	@echo '    make docs'
	@echo ''

docs:
	$(POETRY_RUN) mkdocs build -s -v

docs-serve:
	$(POETRY_RUN) mkdocs serve

clean:
	rm -rf site || true
