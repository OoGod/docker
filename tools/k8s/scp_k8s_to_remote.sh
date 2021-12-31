ip=${1}
cd /tmp/k8s/
sshpass -p password ssh root@${ip} mkdir /tmp/k8s/
scp -r cri-containerd.service root@${ip}:/tmp/k8s/
scp -r config.toml root@${ip}:/tmp/k8s/
scp -r kubernetes.repo root@${ip}:/tmp/k8s/
scp -r 99-kubernetes-cri.conf root@${ip}:/tmp/k8s/
scp -r 10-proxy-ipvs.conf root@${ip}:/tmp/k8s/
scp -r cp_k8s.sh root@${ip}:/root/
scp -r cp_k8s.sh root@${ip}:/tmp/k8s/
scp -r scp_k8s_to_remote.sh root@${ip}:/root/
scp -r scp_k8s_to_remote.sh root@${ip}:/tmp/k8s/
