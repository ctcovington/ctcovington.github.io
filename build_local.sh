# convert ipynb files
for file in ./blog/*.(ipynb)(N); do
    ipython nbconvert $file --to html --template lab
done

# build public and private cv pdfs
(cd cv && latexmk -pdf -interaction=nonstopmode cv.tex cv-private.tex)

# build local version
bundle exec jekyll serve --incremental