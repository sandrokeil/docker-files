# Docker php 5.6-cli-blackfire image
Extends the official PHP image with [blackfire.io](https://blackfire.io) support and with the following PHP extensions:

* bcmath 
* intl 
* mbstring 
* mcrypt 
* pcntl
* opcache

## Start
Run the following command with your blackfire credentials to profile your cli PHP apps.

```bash
$ docker run --rm -it -e BLACKFIRE_SERVER_ID= -e BLACKFIRE_SERVER_TOKEN= -e BLACKFIRE_CLIENT_ID= -e BLACKFIRE_CLIENT_TOKEN= --volume $(pwd):/app sandrokeil/php:5.6-cli-blackfire blackfire $@
```
