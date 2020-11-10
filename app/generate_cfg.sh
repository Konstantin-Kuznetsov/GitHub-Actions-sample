#!/bin/bash

CURR_PATH=$(cd -P -- "$(dirname "$0")" && pwd -P)
mkdir -p $CURR_PATH/keystore;

CFG_FILE_NAME="keystore/keystore_config.cfg"
KEYS=("storeFile" "storePassword" "keyAlias" "keyPassword")

function save_config() {
    arr=("$@")
    echo -n "" > $CFG_FILE_NAME
    for i in "${!KEYS[@]}"; do
        echo "${KEYS[i]} = ${arr[i]}" >> $CFG_FILE_NAME;
    done
}

save_config "$@"