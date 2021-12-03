#!/bin/sh

set -u

Version="1.3.1"
Package="io.dapr.client"
Class="DaprClientBuilder"
DaprClientBuilderMethods=("withObjectSerializer" "withStateSerializer")
KeepGoingCount="1"

for Method in ${DaprClientBuilderMethods[@]}; do
  echo "Fuzzing $str"
  docker run --rm -v /$(pwd)/fuzzing/$str:/fuzzing cifuzz/jazzer-autofuzz \
   io.dapr:dapr-sdk:${Version} \
   ${Package}.${Class}::$Method --keep_going=${KeepGoingCount}
done