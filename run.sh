#!/bin/bash

# Environmental variables
OWNER="$WERCKER_NEW_TAG_TEST_OWNER"
REPO="$WERCKER_NEW_TAG_TEST_REPO"
TAG="$WERCKER_NEW_TAG_TEST_TAG"

if [ -z "${OWNER}" ]; then
    fail "Please set Github repository owner"
fi

if [ -z "${REPO}" ]; then
    fail "Please set Github repository name"
fi

if [ -z "${TAG}" ]; then
    fail "Please set tag to check"
fi

$WERCKER_STEP_ROOT/bin/latest \
    -new \
    -debug \
    -owner ${OWNER} \
    -repo ${REPO} \
    ${TAG}
