#!/bin/bash

grep 'kubectl apply -f frontend.yaml' /tmp/res-step2 && kubectl get pod
