UV_INSTALL_FLAGS :=

.PHONY: all
all:

.PHONY: install
install:
	uv sync

.PHONY: install-upgrade
install-upgrade:
	uv sync --upgrade

# ---- #
# docs #
# ---- #

.PHONY: serve
serve:
	DISABLE_MKDOCS_2_WARNING=true \
	uv run mkdocs serve

.PHONY: build
build: clean
	DISABLE_MKDOCS_2_WARNING=true \
	uv run mkdocs build

.PHONY: deploy
deploy:
	DISABLE_MKDOCS_2_WARNING=true \
	uv run mkdocs gh-deploy --force

.PHONY: clean
clean:
	rm -rf site/
