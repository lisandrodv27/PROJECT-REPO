#! /bin/bash
cd K8s-project
kubectl apply -f secret.yaml -n dev-ops-project
kubectl apply -f lb.yaml -f nginx-cm.yaml -f nginx.yaml -n dev-ops-project
kubectl apply -f cl-ip-front.yaml -f frontend.yaml -n dev-ops-project
kubectl apply -f cl-ip-back.yaml -f backend.yaml -n dev-ops-project
kubectl get svc -n dev-ops-project
