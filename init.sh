#!/bin/bash

set -eu

chmod +x .githooks/commit-msg
git config core.hooksPath .githooks
echo "Commit message hook successfully configured!"