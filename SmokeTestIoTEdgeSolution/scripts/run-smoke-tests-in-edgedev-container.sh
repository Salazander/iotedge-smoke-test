#!/bin/bash

set -euxo pipefail

source .env

sudo docker run \
    --rm \
    --name IoTEdgeDevContainer \
    --entrypoint /bin/bash \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/home/iotedge \
    --env DEVICE_CONNECTION_STRING="$DEVICE_CONNECTION_STRING" \
    mcr.microsoft.com/iotedge/iotedgedev:3.1.0-amd64 \
    -c "./scripts/run-smoke-tests.sh $SMOKE_TESTS_RUNTIME_IN_SECONDS $SMOKE_TESTS_LOG_WINDOW_IN_SECONDS '$SMOKE_SIGNS_TO_GREP'"