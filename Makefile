UV_INSTALL_FLAGS :=

.PHONY: all
all:

.PHONY: install
install: install-docs

.PHONY: install-docs
install-docs:
	uv pip install $(UV_INSTALL_FLAGS) -r requirements.txt

.PHONY: pip-compile
pip-compile:
	uv pip compile --upgrade requirements.in -o requirements.txt

# ---- #
# docs #
# ---- #

.PHONY: docs-serve
docs-serve:
	mkdocs serve

.PHONY: docs-build
docs-build: docs-clean
	mkdocs build

.PHONY: docs-deploy
docs-deploy:
	mkdocs gh-deploy --force

.PHONY: docs-clean
docs-clean:
	rm -rf site/
