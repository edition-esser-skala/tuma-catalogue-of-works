# František Ignác Antonín Tůma: A thematic catalogue of his works

This repository and all of its scripts are based upon [edition-esser-skala/werner-catalogue-of-works](https://github.com/edition-esser-skala/werner-catalogue-of-works), so please consult [this repository's README](https://github.com/edition-esser-skala/werner-catalogue-of-works/blob/main/README.md) for details.


## Changes to technical pipeline

- `script/make_catalogue.R`:
  - `cols_library` and `cols_library`
  - in data validation, remove lines that should be removed anyway
- `script/prepage_pages.R`:
  - `cols_identifiers`


## How to create the webpage

1. Create the catalogue: `Rscript script/make_catalogue.R`.
2. Create PAE sources for RISM incipits: `Rscript script/create_rism_incipits.R`.
3. Engrave all incipits: `make -f script/make_incipits.mk`.
4. Prepare webpages: `Rscript script/prepare_pages.R`.
5. Render with Quarto: `quarto render`.
6. Move generated files into the site folder: `cp -r data/works_mei _book/metadata && cp -r incipits _book` (not necessary during preview).
7. Deploy the folder `_book` via rsync, either to the folder `tuma-catalogue` (released versions) or `tuma-catalogue-draft` (draft versions).
