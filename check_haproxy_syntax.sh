#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2018-01-15 17:56:39 +0000 (Mon, 15 Jan 2018)
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

haproxy_srcdir="$srcdir"

# shellcheck disable=SC1090
. "$srcdir/bash-tools/lib/utils.sh"

section "HAProxy Configs"

echo "Testing all HAProxy configs under $haproxy_srcdir for correctness:"
echo
echo "(requires HAProxy 1.7+ to be able to skip any unresolvable DNS entries)"
echo

# shellcheck disable=SC2086
trap 'pkill -9 -P $$; exit 1' $TRAP_SIGNALS

configs_without_acls="
http.cfg
"

ppid=$$

test_haproxy_conf(){
    local cfg="$1"
    local str
    str="$(printf "%-${maxwidth}s " "$cfg:")"
    if haproxy -c -f 10-global.cfg -f 20-stats.cfg -f "$cfg" &>/dev/null; then
        echo "$str OK"
        if ! grep -q "^$cfg$" <<< "$configs_without_acls"; then
            if ! grep -q -e '^[[:space:]]*acl internal_networks src 192.168.0.0/16 172.16.0.0/12 10.0.0.0/8 127.0.0.1$' "$cfg"; then
                echo "ERROR: No internal networks ACL defined in config $cfg"
                kill $ppid
                exit 1
            fi
            # leave unanchored at end to allow elasticsearch-auth.cfg to append auth_ok ACLs
            if ! grep -q -e '^[[:space:]]*http-request deny if ! internal_networks' \
                         -e '^[[:space:]]*tcp-request content reject if ! internal_networks$' "$cfg"; then
                echo "ERROR: No ACL defined in config $cfg"
                kill $ppid
                exit 1
            fi
        fi
        #for mode in tcp http; do
            # backends don't respect the advanced logging options any more so have been removed from backends so it's no longer 1 to 1
            #num_mode=$(grep -Ec "^[[:space:]]*mode[[:space:]]+$mode" "$cfg" || :)
            #num_option_log=$(grep -Ec "^[[:space:]]*option[[:space:]]+${mode}log" "$cfg" || :)
            #if [ "$num_mode" != "$num_option_log" ]; then
            #    echo "ERROR: missing advanced logging options in $cfg"
            #    kill $ppid
            #    exit 1
            #fi
        #done
        if grep -E "^[[:space:]]*mode[[:space:]]+tcp" && ! grep -Ec "^[[:space:]]*option[[:space:]]+tcplog" "$cfg"; then
            echo "ERROR: missing advanced logging options in $cfg"
            kill $ppid
            exit 1
        fi
    else
        echo "$str FAILED"
        echo
        echo "Error:"
        echo
        haproxy -c -f 10-global.cfg -f 20-stats.cfg -f "$cfg" || :
        kill $ppid
    fi
}

if [ $# -gt 0 ]; then
    configs="$*"
else
    configs="$(echo [a-z]*.cfg ./*/*.cfg)"
fi

if command -v haproxy &>/dev/null; then
    set +o pipefail
    haproxy 2>/dev/null | head -n1
    haproxy_version="$(haproxy 2>/dev/null | head -n1 | awk '{print $3}' | awk -F. '{print $1"."$2}')"
    if ! type -P bc >/dev/null; then
        echo "bc command not found, cannot test HAProxy version, skipping tests..."
        exit 0
    fi
    if [ "$(bc <<< "$haproxy_version < 1.7")" = 1 ]; then
        echo
        echo 'WARNING: HAProxy version too old to test these configs!!'
        untrap
        exit 0
    fi
    set -o pipefail
    echo
    cd "$haproxy_srcdir"
    echo
    maxwidth=0
    for cfg in $configs; do
        if [ "${#cfg}" -gt $maxwidth ]; then
            maxwidth="${#cfg}"
        fi
    done
    ((maxwidth+=1))
    for cfg in $configs; do
        # slow due to all the DNS lookup failures for alternative haproxy services DNS names so aggressively parallelizing
        test_haproxy_conf "$cfg" &
    done
    # this waits for all children but returns zero if even one of the children returns non-zero so we kill our own process from the child as a workaround
    wait
    # race condition as first child finishes before this loop starts and can't test for their existence as there would be a race condition between the check and wait command
    #for num in `seq ${#configs}`; do
    #    wait $num
    #done
    echo
    echo "All HAProxy Configurations Passed Checks"
elif is_CI; then
    echo "FAILED: haproxy is not installed"
    exit 1
else
    echo
    echo "WARNING: HAProxy configurations NOT TESTED (haproxy not found in path, please install first)"
fi
echo
untrap
