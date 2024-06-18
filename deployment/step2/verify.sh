#!/bin/bash

grep 'kubectl apply -f' /tmp/res-step2 && kubectl get po -o jsonpath='{.items[*].status.phase}' | grep -v 'InvalidImageName'
