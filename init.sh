sudo /etc/init.d/mysql restart
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo ln -sf /home/box/web/etc/gunicorn_django.conf   /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart
mysql -u root < /home/box/web/create.sql
