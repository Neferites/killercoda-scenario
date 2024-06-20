#!/bin/bash
if [[ ! -e "/tmp/god" ]]; then
  kubectl get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}' | grep -e "^[[:digit:]]+"
fi
