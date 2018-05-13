#!/bin/bash

base=$(dirname $(readlink -f $0))

source $base/scripts/boards.sh

if [[ "$gen" == "gen3" ]]; then
    $base/test-mc-links.py || exit 1
fi

$base/compliance.sh || exit 1
$base/qv4l2.sh || exit 1