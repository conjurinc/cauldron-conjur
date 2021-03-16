#!/bin/bash -e

CURRENT_DIR=$(pwd)

echo "Current dir: $CURRENT_DIR"

MOUNT_DIR="/summon-conjur"

GORELEASER_IMAGE="goreleaser/goreleaser:latest"

git fetch --tags  # jenkins does not do this automatically yet

docker pull "${GORELEASER_IMAGE}"
docker run --rm -t \
  --env GITHUB_TOKEN \
  -v "$CURRENT_DIR:$MOUNT_DIR" \
  -w "$MOUNT_DIR" \
  "${GORELEASER_IMAGE}" --rm-dist "$@"

echo "Releases built. Archives can be found in dist/goreleaser"
