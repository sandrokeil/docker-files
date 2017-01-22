#!/bin/sh
set -e

TPL_CMD="--template=${TEMPLATES_PATH}/main.php"

set -- /composer/vendor/bin/bookdown "$@" $TPL_CMD

exec /composer/vendor/bin/bookdown
