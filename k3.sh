#!/bin/bash
curl -sfL https://get.k3s.io | sh -
sudo kubectl get nodes
curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=XXX sh -
