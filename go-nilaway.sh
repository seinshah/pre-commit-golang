#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v nilaway &> /dev/null ; then
    echo "nilaway not installed or available in the PATH" >&2
    echo "please check https://github.com/uber-go/nilaway" >&2
    exit 1
fi

FILES=$(go list ./...  | grep -v /vendor/)
exec govulncheck ${FILES}
