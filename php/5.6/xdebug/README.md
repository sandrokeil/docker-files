# Docker php 5.6-cli-xdebug image
Extends the official image with xDebug support and with the following PHP extensions:

* bcmath 
* intl 
* mbstring 
* mcrypt 
* pcntl
* opcache

## Start
> xDebug is already enabled, so you have only to listen for incoming connections in your IDE. Don't forget to set the path mapping!

Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/php:5.6-cli-xdebug php [your file]
```
