#!/usr/bin/env bash
LEN=${1:-18}
NUM=${2:-1}
pwgen -1 -s -y "$LEN" "$NUM"
