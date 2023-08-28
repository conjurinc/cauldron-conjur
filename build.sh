#!/bin/bash -e

CURRENT_DIR=$(pwd)

echo "Current dir: $CURRENT_DIR"

MOUNT_DIR="/summon-conjur"

GORELEASER_IMAGE="goreleaser/goreleaser:latest"

docker pull "${GORELEASER_IMAGE}"
docker run --rm -t \
  --env GITHUB_TOKEN \
  --entrypoint "/sbin/tini" \
  -v "$CURRENT_DIR:$MOUNT_DIR" \
  -w "$MOUNT_DIR" \
  "${GORELEASER_IMAGE}" \
  -- sh -c "git config --global --add safe.directory $MOUNT_DIR && \
    /entrypoint.sh --rm-dist $@ && \
    rm ./dist/goreleaser/artifacts.json"

echo "Releases built. Archives can be found in dist/goreleaser"
