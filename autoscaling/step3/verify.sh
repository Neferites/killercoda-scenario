#!/bin/bash

kubectl get hpa hpa-example -o jsonpath='{.status.currentMetrics[0].resource.current.averageUtilization}' | grep -v '^0$'
