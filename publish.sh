#!/bin/bash
quarto render
git add .
git commit -m "Update blog content"
git push origin main
git checkout gh-pages
cp -r docs/* .
git add .
git commit -m "Publish updated blog"
git push origin gh-pages
git checkout main
