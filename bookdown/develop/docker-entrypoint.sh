#!/bin/sh
set -e

set -- /composer/vendor/bin/bookdown "$@"

exec "$@"
