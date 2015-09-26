cd _site
cp ../CNAME .
git add .
git commit . -m "site-updated"
git push origin master --force
cd ..

