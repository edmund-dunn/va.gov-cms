#!/usr/bin/env bash

# Composer pre-install-cmd hook
# See also:
# - ./composer-pre-update.sh
# - ./composer-post-update.sh
# - ./composer-post-install.sh
repo_root="$(git rev-parse --show-toplevel)"
pushd "${repo_root}" > /dev/null

mkdir --parents ./vendor
mkdir --parents ./docroot/vendor

[ -f .env ] || cp .env.example .env

popd > /dev/null
