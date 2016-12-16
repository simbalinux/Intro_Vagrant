set -x 
apt-get -y update
apt-get -y install nginx
service nginx start
wget -qO- localhost

rm -rf /etc/nginx/sites-enabled
cp -r /vagrant/sites-enabled /etc/nginx

rm -rf /usr/share/nginx/www/
ln -sf /vagrant/www /usr/share/nginx/www
service nginx start

