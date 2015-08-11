InfectedDeployment
==================

Infected database deployment.

IMPORTANT: When deploying out solutions be sure to change the database settings found in settings.php and provide a secret.php file with database login credentianls. You also need to change the include_path in .htaccess to a absolute path to the api folder.

You also have to configure an alias in apache, which links /json to the json-folder in the api, like f.ex this:

Alias /json /home/infected/public_html/api/json

The package `php5-intl` is also required.
