# Docker Typescript 2 image
This Docker image contains:

* nodejs > 6.7
* npm > 3.10
* gulp-cli > 1.2
* bower > 1.7
* typescript > 2.0
* typings > 1.4
* webpack > 1.13

Run the following command from the root of your project and use one of the commands:

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/typescript [ gulp | tsc | bower | node | typings |webpack ]
```
