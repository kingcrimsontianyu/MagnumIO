#!/usr/bin/env bash

export CUFILE_ALLOW_COMPAT_MODE=false
export CUFILE_FORCE_COMPAT_MODE=false
export CUFILE_LOGFILE_PATH=debug_cufile_log.txt
export CUFILE_LOGGING_LEVEL=ERROR
export CUFILE_ENV_PATH_JSON=my_cufile.json

# filepath=foo
# device_id=0
# test_bin=./cufile_sample_001.bin
# gdb -ex start --args $test_bin $filepath $device_id

filepath_1=foo1
filepath_2=foo2
device_id=0
test_bin=bin/cufile_sample_005.bin
gdb -ex start --args $test_bin $filepath_1 $filepath_2 $device_id
# valgrind $test_bin $filepath_1 $filepath_2 $device_id
