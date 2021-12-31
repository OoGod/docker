cp -r /tmp/k8s/cri-containerd.service /etc/systemd/system/cri-containerd.service
mkdir /etc/cri-containerd
cp -r /tmp/k8s/config.toml /etc/cri-containerd/config.toml
cp -r /tmp/k8s/99-kubernetes-cri.conf /etc/sysctl.d/99-kubernetes-cri.conf
mkdir /etc/systemd/system/kubelet.service.d/
cp -r /tmp/k8s/10-proxy-ipvs.conf /etc/systemd/system/kubelet.service.d/10-proxy-ipvs.conf
sudo yum install -y kubelet kubeadm kubectl
sysctl --system
sudo systemctl daemon-reload
