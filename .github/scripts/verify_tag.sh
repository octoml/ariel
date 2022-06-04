#!/bin/bash

ver=$(cat pyproject.toml | egrep --color=auto -m 1 '^version' | cut -d " " -f 3 | tr -d '"')

[ "${GITHUB_REF}" = "refs/tags/${ver}" ] || exit 1
