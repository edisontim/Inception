# Deploying a Wordpress site running NGINX, php-fpm and MariaDB using docker-compose

This tutorial is designed to help you understand how to build your own Wordpress website running NGINX, php-fpm and MariaDB using docker-compose.

## Building your own images
The specificity of this tutorial is that we are going to be building our own images as opposed to grabbing pre-built Wordpress, NGINX, etc. images from the docker library.

# The basics
Docker-compose is a service of docker that allows you to build multiple containers and to have them communicate between each other in a simple way, will still having an isolated environment.

For this particular tutorial, we will need to define three services : NGINX, which will take care of accepting HTPPs requests from a browser and fetching the correct php page from our second container, the php-fpm. FPM is an interface designed to be the bridge between a webserver (our NGINX container) and php, via the FastCGI protocol.
Our third service, MariaDB, is there to handle the Database. So what happens when a webpage is requested by a user is that NGINX gets the request, transfers it to PHP-fpm via FastCGI. PHP then needs to fill the php page with data from our database to populate the webpage. So PHP-fpm needs to be able to communicate with our third container, MariaDB. 
In this project, we will want the data stored in the DB to be persistent, so we will need to use the docker-compose feature "volumes". This will be a handy tool that allows us to have a shared directory between our host machine and our MariaDB container.

# docker-compose.yml
Beware of the indentation chosen to write this file. To have the file work, you will need to have 2 spaces set as your tabs. 

![Screenshot](images/screenshot.png)
