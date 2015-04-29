Using vagrant for local development
===================================

Installing and setting up
-------------------

Install vagrant by downloading it from [http://www.vagrantup.com/downloads.html](http://www.vagrantup.com/downloads.html)
You also need to install Virtualbox from here: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

The server can be started by typing *vagrant up* in the command line after navigating to the folder containing the vagrant file.

Server details
--------------

 * The configuration expects all Infected repositories to be in the same folder. They will be shared to */var/www/short_name_of_repo* in the virtual machine, except for InfectedDeployment, which is mapped to */home/infected/deployment*
 * The server will listen to *infected.dev*. You will need to add a custom dns entry.
 * Xdebug is installed
 * MySQL root password is *julebrus*
 * MySQL user is *test_infected_no*, password is *julebrus*
 * Local VM address is 192.168.56.101
 * There is configured a virtual host for compo, crew, info, main, test, and tickets.

Good to know
------------
![http://puu.sh/g0n1G/b068bbc9e4.png](http://puu.sh/g0n1G/b068bbc9e4.png)

