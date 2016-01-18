# Docker Bookdown.io image
This container generates your [Bookdown.io](http://bookdown.io/) documentation.

## Generate documentation
Run the following command with the path to your *bookdown.json* file.

```bash
$ docker run -it --rm -v $(pwd):/app sandrokeil/bookdown doc/bookdown.json
```

or if you want to try the develop version to test latest features use

```bash
$ docker run -it --rm -v $(pwd):/app sandrokeil/bookdown:develop doc/bookdown.json
```

## Styles
This Docker image comes with Bootswatch.com styles and Prism syntax highlighting powered by an awesome 
Bookdown.io template library on GitHub ([tobiju/bookdown-bootswatch-templates](https://github.com/tobiju/bookdown-bootswatch-templates)).

Choose your preferred style by setting the `CSS_BOOTSWATCH` and `CSS_PRISM` environment variable before generating the book. 
The default Bootswatch style is `cerulean` and for Prism `ghcolors`. See the example below how to use another style.

Visit [bootswatch.com](https://bootswatch.com/) to see how the style looks like.

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

Visit [prismjs.com](http://prismjs.com/) / [prism-styles](https://github.com/PrismJS/prism-themes) to see how the Prism style looks like.

* prism
* dark
* funky
* okaidia
* twilight
* coy
* atom-dark
* base16-ateliersulphurpool.light
* cb
* ghcolors
* hopscotch
* pojoaque
* xonokai

The style is set by an environment `CSS_BOOTSWATCH` variable and the PRISM style by `CSS_PRISM`. 
Here is an example for the `superhero` style with the prism `coy` style.

```bash
$ docker run -it --rm -e CSS_BOOTSWATCH=superhero -e CSS_PRISM=coy -v $(pwd):/app sandrokeil/bookdown doc/bookdown.json
```
