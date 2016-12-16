set -x 
apt-get -y update
apt-get -y install nginx
service nginx start
wget -qO- localhost

rm -rf /etc/nginx/sites-enabled
cp -r /vagrant/sites-enabled /etc/nginx

rm -rf /usr/share/nginx/www/
if [ ! -L "ln -sf /vagrant/www /usr/share/nginx/www" ]; then
rm -rf /usr/share/nginx/www
ln -s /vagrant/www /usr/share/nginx/www
fi

service nginx start

