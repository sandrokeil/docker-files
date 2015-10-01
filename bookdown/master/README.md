# Docker Bookdown.io image
This container generates your [Bookdown.io](http://bookdown.io/) documentation.

## Generate the documentation
Run the following command with the path to your bookdown.json file.

```bash
$ docker run -i -t=false --rm -v $(pwd):/app sandrokeil/bookdown doc/bookdown.json
```
