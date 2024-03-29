# HomeTask_13 - K8s (Lab_3)

## Requirements:
### Task 1
1. Create VM;
2. Configure VM;
3. Add your SSH public key;
4. Install Ingress-controller;
5. Prepare domain name (free resource https://dynv6.com/ );
6. Configure cert-manager (https://cert-manager.io/) with Letsencrypt;
7. Prepare Nginx deployment:
- Deployment
- Service
- Ingress (which will be connected to ClusterIssuer and use the letsencrypt certificate)

## Link to our [`Web-page`](https://chumachenko-b.dns.army/)

### Task 1

1. Create and configurate Vm:

![image][1]

##

2. I test SSH connection from local machine:
```
ssh -i k8s body21033@xx.xx.xx.xx
``` 

##

3. I clone Kubespray release repository:
```bash
git clone https://github.com/kubernetes-sigs/kubespray.git
cd kubespray
git checkout release-2.20
```

![image][2]

##

4. I copy and edit inventory file:
```
cp -rfp inventory/sample inventory/mycluster
nano inventory/mycluster/inventory.ini
```
```ini
[all]
node1 ansible_host=34.79.144.210
[kube_control_plane]
node1
[etcd]
node1
[kube_node]
node1
[calico_rr]
[k8s_cluster:children]
kube_control_plane
kube_node
calico_rr
```
![image][3]

##

5. I turn on MetalLB
```
nano inventory\mycluster\group_vars\k8s_cluster\addons.yml
```
![image](https://user-images.githubusercontent.com/104198926/217781432-5e7943fb-3998-46f9-99d5-81bbeb0a3df9.png)
```
nano inventory\mycluster\group_vars\k8s_cluster\k8s-cluster.yml
```
`kube_proxy_strict_arp: true` 

##

6. Specify some variables:

```
docker run --rm -it -v /home/bc/Desktop/Lab_13/:/mnt -v /home/bc/.ssh/:/pem quay.io/kubespray/kubespray:v2.20.0 bash
```

![image][4]

##

7. We are in `kubespray`:
8. 
```
 cd /mnt/kubespray
 ```
![image][5]

##
8. Run an `Ansible`: (`ansible-playbook`)
```
cd /mnt/kubespray
ansible-playbook -i inventory/mycluster/inventory.ini --private-key /pem/finaly.key -e ansible_user=body21033 -b  cluster.yml
```



![image][6]

##

Using key - we are in our `Node`:

`ssh -i /pem/finaly.key body21033@xx.xx.xx.xx`

![image][7]

##

Create a `directory`:

```
mkdir ~/.kube
sudo cp /etc/kubernetes/admin.conf ~/.kube/config
sudo chmod 777 ~/.kube/config
kubectl get nodes
kubectl get ns
```
![image][8]

##

Check a `Nodes`:

![image][9]

##

Apply `nginx-ctl.yaml`:

![image][10]

##

Apply `path_provisioner`:

![image][11]

## Task 2
```
kubectl get pods -n ingress-nginx -w
```
![image][12]

With this command, you will get a list of services:
```
kubectl get svc --all-namespaces
```
![image][13]

### <a name="create-domain-name">Create domain name</a>
You can use a free service to get a domain name https://dynv6.com/ (if you have your own domain name, you can use it)<br>
![image][15]

### <a name="deployment-and-ingress">Deployment and Ingress</a>
With this command you will run deployment-service.yaml file:
```
kubectl apply -f deployment-service.yaml
```
With this command, you will get a list of pods:
```
kubectl get pods
```
![image][15.5]

<b>Note</b>
- Before using the following commands, you should change the data in the file to your own

With this command you will run `ingress.yaml` file:
```
kubectl apply -f ingress.yaml
```
With this command, you will get a list of ingress:
```
kubectl get ingress
```
![image][15.6]

### <a name="certificate">Certificate</a>
Installing cert-manager:
```
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.yaml
```
<b>Note</b>
- Before using the following commands, you should change the data in the files to your own

Run `letsencrypt-staging`:
```
kubectl apply -f staging-issuer.yaml
```
Run `letsencrypt-prod`:
```
kubectl apply -f web-issuer.yaml
```
Now you should uncomment everything in the [ingress.yaml](https://github.com/body21033/DevOps_BC/blob/b37275cf37b6f316e3da6474f6f132b44806bbe8/Lab_13/files/ingress.yaml) file and run it again:
```
nano ingress.yaml
```
OR
```
vim ingress.yaml
```
```
kubectl apply -f ingress.yaml
```
Check on the status of the `issuer` after you create it:
```
kubectl describe issuer letsencrypt-staging
```
![image][15.7]

Cert-manager will read annotations and create a `certificate`, which you can request and see:
```
kubectl get certificate
```
![image][15.8]

Now you should replace "letsencrypt-staging" with "letsencrypt-prod" in the [ingress.yaml](https://github.com/body21033/DevOps_BC/blob/b37275cf37b6f316e3da6474f6f132b44806bbe8/Lab_13/files/ingress.yaml) file and run it again:
```
nano ingress.yaml
```
OR
```
vim ingress.yaml
```
```
kubectl apply -f ingress.yaml
```



Don't forget to enable support flags `http` and `https` protocols:

![image][19]

##

Check our [page](https://chumachenko-b.dns.army/):

![image][15.9]


## Useful links for Tasks:
- [Install Docker Engine][20]
- [Dynv6.com][21]
- [Cert-manager][23]
- [Useful Youtube Channel][22]
- [ssh-keygen][24]




[1]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/1.jpg?raw=true
[2]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/2.jpg?raw=true
[3]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/3.jpg?raw=true
[4]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/4.jpg?raw=true
[5]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/5.jpg?raw=true
[6]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/6.jpg?raw=true
[7]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/7.jpg?raw=true
[8]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/8.jpg?raw=true
[9]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/9.jpg?raw=true
[10]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/10.jpg?raw=true
[11]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/11.jpg?raw=true
[12]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/12.jpg?raw=true
[13]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/13.jpg?raw=true
[14]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/14.jpg?raw=true
[15]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.jpg?raw=true
[15.5]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.5.jpg?raw=true
[15.6]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.6.jpg?raw=true
[15.7]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.7.jpg?raw=true
[15.8]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.8.jpg?raw=true
[15.9]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/15.9.jpg?raw=true
[16]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/16.jpg?raw=true
[17]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/17.jpg?raw=true
[18]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/18.jpg?raw=true
[19]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/19.jpg?raw=true
[20]: https://docs.docker.com/engine/install/ubuntu/
[21]: https://dynv6.com/
[22]: https://www.youtube.com/watch?v=I18TNwZ2Nqg&t=771s&ab_channel=ADV-IT
[23]: https://cert-manager.io/
[24]: https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04
