#!/usr/bin/env bats
# https://github.com/sstephenson/bats/blob/master/README.md

BUILD_DIR=/tmp/buildpack-test/build
CACHE_DIR=/tmp/buildpack-test/cache

setup() {
  mkdir -p $BUILD_DIR
  touch $BUILD_DIR/foo
  mkdir -p $CACHE_DIR
}

@test "addition using bc" {
  run bin/compile $BUILD_DIR $CACHE_DIR
  [ "$status" -eq 1 ]
}
