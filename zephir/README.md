# Zephir PHP extension compiler

[Zephir](https://zephir-lang.com/) is a compiled high level language aimed to the creation of C-extensions for PHP.

This Docker image contains the Zephir parser and Zephir compiler.
Make sure you are in the Zephir extension root folder or change `workdir`.

## PHP 7.3

```
docker run --rm -it -v $(pwd):/app sandrokeil/zephir:7.3-cli [Zephir command]
```

## PHP 7.2

```
docker run --rm -it -v $(pwd):/app sandrokeil/zephir:7.2-cli [Zephir command]
```

## PHP 7.1

```
docker run --rm -it -v $(pwd):/app sandrokeil/zephir:7.1-cli [Zephir command]
```