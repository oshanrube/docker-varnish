#!/bin/bash

set -e
exec varnishd -a :8081 -F \
  -f $VCL_CONFIG \
  -s malloc,$CACHE_SIZE \
  $VARNISHD_PARAMS
