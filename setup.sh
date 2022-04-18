#!/usr/bin/env bash
set -euo pipefail

brew install hyperkit
brew install minikube

minikube start --memory max --cpus max
kubectl config use-context minikube
minikube addons enable ingress
minikube addons enable registry
