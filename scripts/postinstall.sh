#!/bin/bash

set -euo pipefail

if [[ $PWD =~ '/node_modules/@signalfx/opentracing' ]]; then
    rm -rf ../../opentracing || true
    cp -r ../ ../../
    rm -rf ../../@signalfx/opentracing
    if [ -z "$(ls -A ../../@signalfx)" ]; then
        rm -rf ../../@signalfx
    fi
fi
