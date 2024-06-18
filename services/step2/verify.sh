#!/bin/bash

TEST=$(k get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}')
if [[-z "$myVar"]]; then
  exit 1
fi