#!/bin/bash

base=$(readlink -f $(dirname $0))

source $base/scripts/vin-tests.sh
source $base/scripts/m2.sh

test_qv4l2 $vin0
test_qv4l2 $vin1
