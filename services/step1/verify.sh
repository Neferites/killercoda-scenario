#!/bin/bash

kubectl get svc monolith -n default

grep 3 /tmp/svc.res