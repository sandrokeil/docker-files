# Docker php 5.6-cli image
Extends the official image with the following PHP extensions:

* bcmath 
* intl 
* mbstring 
* mcrypt 
* pcntl

## Start
Run the following command with the path to your php file.

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/php:5.6-cli php [your file]
```
