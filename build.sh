#!/bin/bash

SOLC_VERSION="v$1"
SOLC_PLATFORM=$2

# if var/solc-$SOLC_VERSION exists, exit
if [ -f "./docs/linux-arm64/solc-${SOLC_VERSION}" ]; then
    echo "solc-${SOLC_VERSION} already exists"
    exit 0
fi

case $SOLC_VERSION in
    v0.8.20|v0.8.21|v0.8.22|v0.8.23|v0.8.24|v0.8.25|v0.8.26|v0.8.27|v0.8.28)
        SOLC_DOCKERFILE="solc-0.8.24.Dockerfile"
        ;;
    v0.7.6|v0.8.0|v0.8.1|v0.8.2|v0.8.3|v0.8.4|v0.8.5|v0.8.6|v0.8.7|v0.8.8|v0.8.9|v0.8.10|v0.8.11|v0.8.12|v0.8.13|v0.8.14|v0.8.15|v0.8.16|v0.8.17|v0.8.18|v0.8.19)
        SOLC_DOCKERFILE="solc-0.8.0.Dockerfile"
        ;;
    v0.7.0|v0.7.1|v0.7.2|v0.7.3|v0.7.4|v0.7.5)
        SOLC_DOCKERFILE="solc-0.7.0.Dockerfile"
        ;;
    *)
        echo "Unsupported version: $SOLC_VERSION"
        exit 1
        ;;
esac

# only allow SOLC_PLATFORM values of linux/arm64/v8 and linux/amd64
if [[ $SOLC_PLATFORM != "linux/arm64/v8" ]] && [[ $SOLC_PLATFORM != "linux/amd64" ]]; then
    echo "Unsupported platform: $SOLC_PLATFORM"
    exit 1
fi

docker buildx build \
    --platform "${SOLC_PLATFORM}" \
    --build-arg "SOLC_VERSION=${SOLC_VERSION}" \
    -f ${SOLC_DOCKERFILE} \
    -t "solc-builder:${SOLC_VERSION}" \
    .

docker run -it --rm \
    -v /tmp/docker-bridge:/tmp/docker-bridge \
    "solc-builder:${SOLC_VERSION}" \
    cp /usr/local/src/solidity/build/solc/solc "/tmp/docker-bridge/solc-${SOLC_VERSION}"

# if ./var does not exist, create it
if [ ! -d "./var" ]; then
    mkdir var
fi

cp "/tmp/docker-bridge/solc-${SOLC_VERSION}" ./docs/linux-arm64
