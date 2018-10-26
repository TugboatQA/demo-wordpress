#!/bin/sh

if [ "x${TUGBOAT_BASE_PREVIEW}" != "x" ]; then
    wp --allow-root --path="${DOCROOT}" search-replace "${TUGBOAT_BASE_PREVIEW_URL_HOST}" "${TUGBOAT_SERVICE_URL_HOST}" --skip-columns=guid
else
    wp --allow-root --path="${DOCROOT}" search-replace 'wordpress.local' "${TUGBOAT_SERVICE_URL_HOST}" --skip-columns=guid
fi
