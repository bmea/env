#!/bin/sh
# env.sh - run a program in an environment config

# strict
set -o errexit
set -o nounset

# args
ENV=${1:+$1}

# config
ENV_PATH=${ENV_PATH:-$HOME/env.d:/etc/env.d}

# begin
IFS=:
for p in $ENV_PATH
do
	if [ "${ENV:+isset}" = "isset" -a -x $p/$ENV ]
	then
		. $p/$ENV
		shift
		break
	fi
done
unset IFS

exec env "$@"
