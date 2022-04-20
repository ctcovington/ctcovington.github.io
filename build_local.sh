# convert ipynb files
for file in ./blog/*.(ipynb)(N); do
    ipython nbconvert $file --to html --template lab
done

# build local version
bundle exec jekyll serve --incremental