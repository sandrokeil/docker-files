#!/bin/sh
set -eu

# Check for CONCURRENT variable
if [[ -v CONCURRENT ]]; then
  sed -i -e "s|concurrent = 1|concurrent = ${CONCURRENT}|g" /etc/gitlab-runner/config.toml
fi

gitlab-ci-multi-runner register -n "$@"

exec gitlab-ci-multi-runner run --working-directory=/opt/gitlab-runner
