#!/bin/bash

BUCKET_NAME=dylburger.com

cd ../content

# Copy files
aws s3 cp index.html s3://${BUCKET_NAME}
aws s3 cp --content-type text/html burger s3://${BUCKET_NAME}
aws s3 cp main.css s3://${BUCKET_NAME}

cd -

exit 0
