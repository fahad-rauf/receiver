#!/usr/bin/env bash
set -e

mvn package
cp target/receiver-*.jar out/
docker build -f Dockerfile -t fahadrauf/receiver out/
docker push fahadrauf/receiver
kubectl --kubeconfig /c/config/config-devtest-apps187 apply -f src/main/kubernetes -n mock
