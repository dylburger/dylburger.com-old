#!/bin/bash

BUCKET_NAME=dylburger.com
CONTENT_DIR=/Users/dylan/tree/dylburger.com/content/

echo "Pushing content to ${BUCKET_NAME}"

# Copy files
aws s3 cp ${CONTENT_DIR}/index.html s3://${BUCKET_NAME}
aws s3 cp --content-type text/html ${CONTENT_DIR}/burger s3://${BUCKET_NAME}
aws s3 cp ${CONTENT_DIR}/main.css s3://${BUCKET_NAME}

echo "Done pushing content to ${BUCKET_NAME}"

exit 0
