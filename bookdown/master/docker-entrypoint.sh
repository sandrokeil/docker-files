#!/bin/bash
set -e

TPL_CMD=

if [ "$TEMPLATE" ]; then
    echo "using bookdown template: $TEMPLATE"
    TPL_CMD="--template=${TEMPLATES_PATH}/${TEMPLATE}/main.php"
fi

set -- /root/composer/vendor/bin/bookdown "$@" $TPL_CMD

exec "$@"
