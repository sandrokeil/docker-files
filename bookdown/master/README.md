# Docker Bookdown.io image
This container generates your [Bookdown.io](http://bookdown.io/) documentation.

## Generate the documentation
Run the following command with the path to your bookdown.json file.

```bash
$ docker run -it --rm -v $(pwd):/app sandrokeil/bookdown doc/bookdown.json
```

## Themes
This Docker image comes with Bootswatch.com styles and Prism syntax highlighting powered by an awesome 
Bookdown.io template library on GitHub ([tobiju/bookdown-bootswatch-templates](https://github.com/tobiju/bookdown-bootswatch-templates)).

Here is a list of available themes. 

* cerulean
* cosmo
* cyborg
* darkly
* flatly
* journal
* lumen
* paper
* readable
* sandstone
* simplex
* slate
* spacelab
* superhero
* united
* yeti

The theme is set by an environment variable. Here is an example for the *darkly* theme.

```bash
$ docker run -it --rm -e TEMPLATE=darkly -v $(pwd):/app sandrokeil/bookdown doc/bookdown.json
```
