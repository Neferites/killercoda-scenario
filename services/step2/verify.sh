#!/bin/bash

TEST=$(k get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}')
if [[ -z "$TEST" ]]; then
  return 1
else
  return 0
fi