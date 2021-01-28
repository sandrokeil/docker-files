# Docker Typescript image
This Docker image contains:

* nodejs > 12.20
* npm > 6.14
* yarn > 1.22.5
* typescript > 4.1.3

Run the following command from the root of your project and use one of the commands:

```bash
$ docker run --rm -it --volume $(pwd):/app sandrokeil/typescript [ yarn | npm | tsc | node ]
```
