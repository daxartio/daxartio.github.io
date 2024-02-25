DEFAULT_GOAL := help

POETRY_RUN := poetry run

.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  install-poetry  Install poetry"
	@echo "  install         Install dependencies"
	@echo "  docs            Build documentation"

.PHONY: install-poetry
install-poetry:
	pip install poetry

.PHONY: install
install:
	poetry install --no-root

.PHONY: docs
docs:
	$(POETRY_RUN) mkdocs build
