#!/bin/bash
set -e

TPL_CMD="--template=${TEMPLATES_PATH}/main.php"

set -- /root/composer/vendor/bin/bookdown "$@" $TPL_CMD

exec "$@"
