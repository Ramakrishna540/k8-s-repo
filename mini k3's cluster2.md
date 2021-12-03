install k3s using below command on 1st vm 
```
curl -sfL https://get.k3s.io | sh -

```
copy the accesskey token
```

cat /var/lib/rancher/k3s/server/node-token

```
login to another vm manually and excute below command paste the accesskey and server ip

```
curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=XXX sh -

```
For output Follow below command 

```
kubectl get nodes

```
