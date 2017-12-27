# Using vagrant for local development

## About the solution

Vagrant is a solution for automating the setup of virtual machines for development and production environments. [PuPHPet](puphpet.com) is a website that auto-generates installscripts for vagrant, meant for php projects.

Using this solution, setting up infected on a machine for development is no longer a days work, and it is streamlined such that it works the same on all platforms. Folders are mapped in, such that changes made are accessible from inside the virtual machine in realtime, allowing for seamless development as if the web server was on the host machine. Think of it as docker, but less abstracted.

## Installing and setting up

Install vagrant by downloading it from [http://www.vagrantup.com/downloads.html](http://www.vagrantup.com/downloads.html)
You also need to install Virtualbox from here: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

The server can be started by typing *vagrant up* in the command line from the root of `InfectedDeployment`

## Server details

 * The configuration expects all Infected repositories to be in the same folder. They will be shared to */var/www/short_name_of_repo* in the virtual machine, except for InfectedDeployment, which is mapped to */home/infected/deployment*
 * Runs ubuntu 14.04 LTS x64
 * Xdebug is installed
 * Local VM address is 192.168.56.101
 * There is configured a virtual host for compo, crew, info, main, test, and tickets.

## Mapped folders

 * ./../InfectedAPI -> /var/www/api
 * ./../InfectedCrew -> /var/www/crew
 * ./../InfectedMain -> /var/www/main
 * ./../InfectedTickets -> /var/www/tickets
 * Alias /api /home/test.infected.no/www/api

## Virtualhosts

 * infected.dev -> /var/www/main
 * crew.infected.dev -> /var/www/crew
 * tickets.infected.dev -> /var/www/tickets

## Database

 * MySQL root password is *123*
 * MySQL user is *test.infected.no*, password *123*

 * test_infected_no -> test_infected_no.sql
 * test_infected_no_compo -> test_infected_no_compo.sql
 * test_infected_no_crew -> test_infected_no_crew.sql
 * test_infected_no_info -> test_infected_no_info.sql
 * test_infected_no_main -> test_infected_no_main.sql
 * test_infected_no_tickets -> test_infected_no_tickets.sql
 * test_infected_no_tech -> test_infected_no_tech.sql

 * The reccomended way of editing the database is using **MySQL Workbench**. The reccomended way of connecting to the virtual mysql server is using a `Standard TCP/IP over SSH` connection. See [Here](https://blog.slewsystems.com/2014/01/01/connecting-to-a-puphpet-vagrant-ftp-and-mysql-servers/) for more info.

## Vagrant commands

 * `vagrant up` - Fire up vagrant server(Will set it up if it doesn't exist)
 * `vagrant destroy` - Destroy the VM
 * `vagrant halt` - Shutdown the VM
 * `vagrant ssh` - Start an ssh connection to the server as the user `vagrant`

## Testing

 * The database needs to be sterile/non-modified before running a test. The script `sterilizeDb.sh` in deployment will do this for you. Run it from `/var/www/deployment`
 * Phpunit is installed. Please maintain it to the same version as travis.
 * Run it from `/var/www/api`, with the command `~/.config/composer/vendor/bin/phpunit tests/tests`

## Good to know

![http://puu.sh/g0n1G/b068bbc9e4.png](http://puu.sh/g0n1G/b068bbc9e4.png)

