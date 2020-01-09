#!/usr/bin/env bash
kubectl create -f monitor-namespace.yaml
kubectl create -f cluster-role.yaml
kubectl create -f config-map.yaml -n monitoring
kubectl create -f prometheus-deployment.yaml --namespace=monitoring
kubectl create -f prometheus-service.yaml --namespace=monitoring
kubectl get svc -n monitoring

kubectl delete namespace NAMESPACENAME --force --grace-period=0
