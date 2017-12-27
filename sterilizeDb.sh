#!/bin/sh

/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no.sql test_infected_no 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_compo.sql test_infected_no_compo 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_crew.sql test_infected_no_crew 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_info.sql test_infected_no_info 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_main.sql test_infected_no_main 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_tickets.sql test_infected_no_tickets 123
/var/www/api/tests/install/installDb.sh /var/www/deployment/test_infected_no_tech.sql test_infected_no_tech 123