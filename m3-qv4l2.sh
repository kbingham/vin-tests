#!/bin/bash

base=$(dirname $(readlink -f $0))

source $base/scripts/vin-tests.sh
source $base/scripts/m3.sh

mc_reset
mc_set_link "$csi40name" 1 "$vinname0" 1
mc_set_link "$csi20name" 1 "$vinname1" 1
mc_set_link "$csi20name" 1 "$vinname6" 1

mc_propagate_hdmi "$vinname0"
mc_propagate_cvbs "$vinname1"
mc_propagate_cvbs "$vinname6"

# Test HDMI
test_qv4l2 $vin0

# Test CVBS
test_qv4l2 $vin1
