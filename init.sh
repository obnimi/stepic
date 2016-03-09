sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd
mkdir etc
sudo mv /home/box/web/etc/gunicorn.conf /home/box/etc/
sudo ln -sf /home/box/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
gunicorn -b 0.0.0.0:8080 hello:app
