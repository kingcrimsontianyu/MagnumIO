#!/usr/bin/env bash

export CUFILE_ALLOW_COMPAT_MODE=true
export CUFILE_FORCE_COMPAT_MODE=true
export CUFILE_LOGFILE_PATH=debug_cufile_log.txt
export CUFILE_LOGGING_LEVEL=TRACE

# filepath=foo
# device_id=0
# test_bin=./cufile_sample_001.bin
# gdb -ex start --args $test_bin $filepath $device_id

filepath_1=foo1
filepath_2=foo2
test_bin=./cufile_sample_012.bin
gdb -ex start --args $test_bin $filepath_1 $filepath_2
