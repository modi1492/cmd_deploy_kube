#!/usr/bin/env bash
kubectl apply -f grafana-dashboard-provider.yaml
kubectl apply -f grafana.yaml
kubectl apply -f grafana-service.yaml


kubectl delete -f grafana-dashboard-provider.yaml
kubectl delete -f grafana.yaml
kubectl delete -f grafana-service.yaml

