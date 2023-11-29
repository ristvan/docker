#!/usr/bin/bash

FULL_SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "${FULL_SCRIPT_PATH}")"

VERSION="0.3.0"


if [ "${BASH_SOURCE[0]}" == "$0" ]; then
    echo "Building version: ${VERSION}"

    pushd "${SCRIPT_DIR}" || exit 1
    docker build -t "cpp-with-gtest-base:${VERSION}" .
    popd || exit 1
fi

