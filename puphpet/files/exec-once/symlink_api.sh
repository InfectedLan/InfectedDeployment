#!/bin/bash
mkdir /home/test.infected.no
sudo mkdir /home/test.infected.no/public_html
chmod -R 755 /home/test.infected.no/
ln -s /var/www/api/ /home/test.infected.no/public_html/api