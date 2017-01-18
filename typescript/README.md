# Docker Typescript 2 image
This Docker image contains:

* nodejs > 7.1
* npm > 3.10
* gulp-cli > 1.2
* bower > 1.8
* typescript > 2.1
* typings > 2.1
* webpack > 1.14

Run the following command from the root of your project and use one of the commands:

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/typescript [ gulp | tsc | bower | node | typings |webpack ]
```
