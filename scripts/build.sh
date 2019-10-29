#!/bin/bash
set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

VERSION="$( cat $DIR/../VERSION )"

docker build \
    --pull \
    --cache-from ahlaw/polynote \
    --build-arg POLYNOTE_VERSION=$VERSION \
    -t ahlaw/polynote .
