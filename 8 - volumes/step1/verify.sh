#!/bin/bash

grep $(kubectl get secret mysql -o jsonpath='{.data.password}' | base64 -d) /tmp/res-step1
