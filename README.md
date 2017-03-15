Amazon S3 Directory Browser
===========================

Please report any issues [here on GitHub](https://github.com/powdahound/s3browser/issues).


Configuration
-------------

The app configures itself thanks to environment variables.
The list of the supported variables are defined in the [config file](www/config.php).


Installation with Apache
----------------------

1. Check out the latest release from GitHub:

        cd /srv/www
        git clone git@github.com:powdahound/s3browser.git

2. Add an Apache VirtualHost for your new subdomain. e.g.:

        <VirtualHost *:80>
          ServerName s3browser.example.com
          DocumentRoot /srv/www/s3browser/www

          <Directory />
            AllowOverride all
            Order allow, deny
            Allow from all
          </Directory>
        </VirtualHost>

3. Tweak config to your liking. Each option is documented in the config.php file. Since it defaults to loading the values from environment variables, using [SetEnv](http://httpd.apache.org/docs/2.2/mod/mod_env.html) is probably best. You could also edit config.php to your liking.

4. Reload your Apache config:

        sudo /etc/init.d/apache2 reload


Docker integration
-------------------

1. Create a `.env` file with the configuration needed
2. Install [`docker-compose`](https://docs.docker.com/compose/)
3. Run `docker-compose up --build`

Give a look at the [Dockerfile](Dockerfile) and [docker-compose.yml](docker-compose.yml) if needed.
