#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

k get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}' > /tmp/res-step2
grep '192.168.0.8' /tmp/res-step2