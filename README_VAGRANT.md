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
 * Runs ubuntu 14.04 LTS x64
 * Xdebug is installed
 * Local VM address is 192.168.56.101
 * There is configured a virtual host for compo, crew, info, main, test, and tickets.

Mapped folders
--------------

 * ./../InfectedAPI -> /home/test.infected.no/www/api
 * ./../InfectedCompo -> /home/test.infected.no/www/compo
 * ./../InfectedCrew -> /home/test.infected.no/www/crew
 * ./../InfectedDeployment -> /home/test.infected.no/deployment
 * ./../InfectedInfo -> /home/test.infected.no/www/info
 * ./../InfectedMain -> /home/test.infected.no/www/main
 * ./../InfectedTest -> /home/test.infected.no/www/test
 * ./../InfectedTickets -> /home/test.infected.no/www/tickets
 * Alias /api /home/test.infected.no/www/api

Virtualhosts
------------

 * infected.dev/www.infected.dev -> /home/test.infected.no/www/main
 * compo.infected.dev -> /home/test.infected.no/www/compo
 * crew.infected.dev -> /home/test.infected.no/www/crew
 * info.infected.dev -> /home/test.infected.no/www/info
 * tickets.infected.dev -> /home/test.infected.no/www/tickets
 * test.infected.dev -> /home/test.infected.no/www/test

Database
--------
 * MySQL root password is *julebrus*
 * MySQL user is *test.infected.no*, password *julebrus*

 * test_infected_no -> test_infected_no.sql
 * test_infected_no_compo -> test_infected_no_compo.sql
 * test_infected_no_crew -> test_infected_no_crew.sql
 * test_infected_no_info -> test_infected_no_info.sql
 * test_infected_no_main -> test_infected_no_main.sql
 * test_infected_no_tickets -> test_infected_no_tickets.sql

Good to know
------------
![http://puu.sh/g0n1G/b068bbc9e4.png](http://puu.sh/g0n1G/b068bbc9e4.png)

