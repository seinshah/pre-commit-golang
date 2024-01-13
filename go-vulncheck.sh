#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v govulncheck &> /dev/null ; then
    echo "govulncheck not installed or available in the PATH" >&2
    echo "please check https://go.dev/blog/govulncheck" >&2
    exit 1
fi

FILES=$(go list ./...  | grep -v /vendor/)
exec govulncheck ${FILES}
