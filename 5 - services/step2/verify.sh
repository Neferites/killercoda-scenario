#!/bin/bash

kubectl get endpoints monolith -o jsonpath='{.subsets[0].addresses[0].ip}' | grep 192