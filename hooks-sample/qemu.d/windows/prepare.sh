#!/usr/bin/env bash

VM_NAME="$1"
EVSIEVE_SERVICE="evsieve@$VM_NAME"

scripts/gpu-rebar.sh 14 3
scripts/hugepages.sh

systemctl restart $EVSIEVE_SERVICE
sleep 2