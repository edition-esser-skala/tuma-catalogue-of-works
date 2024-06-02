# František Ignác Antonín Tůma: A thematic catalogue of his works

This repository and all of its scripts are based upon [edition-esser-skala/werner-catalogue-of-works](https://github.com/edition-esser-skala/werner-catalogue-of-works), so please consult [this repository's README](https://github.com/edition-esser-skala/werner-catalogue-of-works/blob/main/README.md) for details.



## How to create the webpage

1. Create the catalogue: `script/make_catalogue.R`.
2. Create incipits: `make -f script/make_incipits.mk` and `script/copy_rism_incipits.R`.
3. Prepare webpages: `script/prepare_pages.R`.
4. Render with Quarto: `quarto render`.
5. Move generated files into the site folder: `cp -r data/works_html _book/works && cp -r data/works_mei _book/works/metadata && cp -r incipits _book` (not necessary during preview).
6. Deploy the folder `_book` via rsync, either to the folder `werner-catalogue` (released versions) or `werner-catalogue-draft` (draft versions).
