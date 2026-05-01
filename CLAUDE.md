# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

MkDocs documentation site for fragrance authentication guides and reviews, published at https://scent.jfcherng.me. Content lives in `src/` (docs_dir); built output goes to `site/`.

## Commands

Use UV — never plain `pip` or `python -m mkdocs`:

- `make install` — sync deps (`uv sync`)
- `make install-upgrade` — upgrade all deps (`uv sync --upgrade`)
- `make serve` — local dev server at http://127.0.0.1:8000
- `make build` — build static site; run this to verify before committing
- `make deploy` — publish to GitHub Pages (`mkdocs gh-deploy --force`); run manually when ready to publish
- `make clean` — delete `site/`

## Nav

Every new page must be explicitly added to the `nav:` section in `mkdocs.yml`. Follow the existing nesting pattern: top-level category → subcategory → individual pages. Pages not listed in `nav:` are excluded from the site.

## Content

Site is bilingual (Chinese and English). Match the language of the surrounding section when writing new content. Reviews in `src/reviews/` follow a free-form style with `---` dividers between individual scents and 【紙上】/【上皮】 sections for paper vs. skin impressions.

## Workflow

Commit directly to `main`. Run `make build` to verify, then `make deploy` when ready to publish.
