#export TERM=dumb
#export DEBIAN_FRONTEND=noninteractive
#echo 'mysql-server mysql-server/root_password password 123abc' | sudo debconf-set-selections
#echo 'mysql-server mysql-server/root_password_again password 123abc' | sudo debconf-set-selections
#apt-get -qq update
#apt-get -qq -y install mysql-server
# mysqladmin -u root password 123abc
MYSQL_ROOT_PASSWORD=123abc
expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"\r\"
expect \"Change the root password?\"
send \"y\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof"

#aptitude -y install expect