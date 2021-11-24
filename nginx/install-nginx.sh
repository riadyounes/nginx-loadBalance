sudo apt install nginx -y

rm -f /etc/nginx/sites-avaliable/default
rm -f /etc/nginx/sites-enabled/default

mv /tmp/nginx/nginx.conf /etc/nginx/sites-available/nginx.conf
ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

sudo service nginx restart
