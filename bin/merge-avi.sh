#!/usr/bin/env bash
set -e
cat "$@" > /tmp/tmp.avi
mencoder -forceidx -oac copy -ovc copy /tmp/tmp.avi -o output.avi
rm -f /tmp/tmp.avi
