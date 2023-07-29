#!/usr/bin/env bash

source "evsieve/evsieve.conf"

TARGET="$1"

evsieve/press-key.sh $TARGET KEY_ESC
evsieve/switch-display.sh $TARGET