#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

k get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}' | grep '^[[:digit:]]'