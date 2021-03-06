#!/bin/bash
cd /opt/docs.ukfast.co.uk
git submodule update --init
git pull --recurse-submodules origin master
cd ukf && git pull origin master && cd -
curl -XDELETE 'http://localhost:9200/documentation/'
make populate-index
sphinx-build -nW -b html -d build/doctrees source/ build/html
make build/html/_static/css/app.css
make build/html/_static/app.js
rm -rf /var/www/vhosts/docs.ukfast.co.uk/htdocs
cp -a build/html /var/www/vhosts/docs.ukfast.co.uk/htdocs
chown -R nginx.nginx /var/www/vhosts/docs.ukfast.co.uk/htdocs
