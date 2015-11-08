# Docker php cli images
Extends the official image with the following PHP extensions:

* bcmath 
* intl 
* mbstring 
* mcrypt 
* pcntl
* opcache

## Start PHP 7.0-cli
Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/php:7.0-cli php [your file]
```

## Start PHP 5.6-cli
Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/php:5.6-cli php [your file]
```

## Start PHP 5.6-cli with Xdebug
> xDebug is already enabled, so you have only to listen for incoming connections in your IDE. Don't forget to set the 
path mapping in your IDE with the name *application* !

Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app -e PHP_IDE_CONFIG="serverName=application" sandrokeil/php:5.6-cli-xdebug php [your file]
```

## Start PHP 5.6-cli with blackfire
Run the following command with your [blackfire](https://blackfire.io) credentials to profile you cli PHP apps.

```bash
$ docker run --rm -it -e BLACKFIRE_SERVER_ID= -e BLACKFIRE_SERVER_TOKEN= -e BLACKFIRE_CLIENT_ID= -e BLACKFIRE_CLIENT_TOKEN= --volume $(pwd):/app sandrokeil/php:5.6-cli-blackfire blackfire $@
```
