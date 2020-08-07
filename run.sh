#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2020-08-07 11:47:44 +0100 (Fri, 07 Aug 2020)
#
#  https://github.com/harisekhon/haproxy-configs
#
#  License: see accompanying Hari Sekhon LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/harisekhon
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck disable=SC1090
. "$srcdir/bash-tools/lib/utils.sh"

# shellcheck disable=SC2034,SC2154
usage_description="
Run one or more HAProxy configs

Shorter and easier command than doing this manually:

haproxy -f 10-global.cfg -f 20-stats.cfg -f file1.cfg -f file2.cfg ...
"

# used by usage() in lib/utils.sh
# shellcheck disable=SC2034
usage_args="<file.cfg> [<file2.cfg> ...]"

help_usage "$@"

min_args 1 "$@"

cfg="$1"

eval haproxy -f "$srcdir/10-global.cfg" -f "$srcdir/20-stats.cfg" "$(for cfg in "$@"; do echo -n " -f '$cfg'"; done)"
