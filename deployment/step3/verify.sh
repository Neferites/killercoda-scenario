#!/bin/bash

kubectl get deployments.apps hello -o jsonpath='{.status.replicas}' | grep 3