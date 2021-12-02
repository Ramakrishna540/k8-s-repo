## mini k3s cluster setup
### step-1
  Launch 2 instances(ubuntu) in GCP cloud

  consider one instace as masternode and then and 2nd instance as worker node

### step-2
  install k3s cluster in master node(instance1)

  To install k3s as a service, run:

  curl -sfL https://get.k3s.io | sh -

  A kubeconfig file is written to /etc/rancher/k3s/k3s.yaml and the service is automatically started or restarted. The install script will install K3s and additional utilities, such as kubectl, crictl, k3s-killall.sh, and k3s-uninstall.sh,

  To know our master node created enter below command

  sudo kubectl get nodes

  Copy the k3-token for creating worker nodes which is availabe at /var/lib/rancher/k3s/server/node-token

### Step3
  in the second worker node enter below command with your master node server ip

  curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=XXX sh -

#### Manual Download
 Download k3s from latest release, x86_64, armhf, and arm64 are supported.

 Run the server.

sudo k3s server & Kubeconfig is written to /etc/rancher/k3s/k3s.yaml sudo k3s kubectl get nodes

sudo k3s agent --server https://myserver:6443 --token ${NODE_TOKEN}

now your k3s cluster setup with 1 master and 1 worker node ready
after your lab completed make sure to terminate your instances
