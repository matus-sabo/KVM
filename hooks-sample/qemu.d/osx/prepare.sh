#!/usr/bin/env bash

VM_NAME="$1"
EVSIEVE_SERVICE="evsieve@$VM_NAME"

systemctl restart $EVSIEVE_SERVICE
sleep 2