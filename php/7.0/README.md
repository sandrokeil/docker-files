# Docker php 7.0-cli image
Extends the official PHP image with the following PHP extensions:

* bcmath 
* intl 
* mbstring 
* mcrypt 
* pcntl
* opcache

## Start
Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/php:7.0-cli php [your file]
```
