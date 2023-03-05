# HomeTask_11 - K8s (3)


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

### Task 1

Create and configurate Vm:

![image][1]

##

Run git clone kubespray:

![image][2]

##

Change some info in inventory file:

![image][3]

##

Specify some variables:

![image][4]

##

We are in kubespray:

![image][5]

##

Run an Ansible:

![image][6]

##

Using key - we are in our Node:

![image][7]

##

Create a directory:

![image][8]

##

Check a Nodes:

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
With this command you will run deployment.yaml file:
```
kubectl apply -f deployment.yaml
```
With this command, you will get a list of pods:
```
kubectl get pods
```
![image](https://user-images.githubusercontent.com/7732624/217263171-7770b83e-e2e7-42d4-ac49-5e7a95b9bc5c.png)

<b>Note</b>
- Before using the following commands, you should change the data in the file to your own

With this command you will run ingress.yaml file:
```
kubectl apply -f ingress.yaml
```
With this command, you will get a list of ingress:
```
kubectl get ingress
```
![image](https://user-images.githubusercontent.com/7732624/217262886-b5e66089-34ab-4f66-9649-52c9a2536954.png)

### <a name="certificate">Certificate</a>
Installing cert-manager:
```
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.11.0/cert-manager.yaml
```
<b>Note</b>
- Before using the following commands, you should change the data in the files to your own

Run letsencrypt-staging:
```
kubectl apply -f staging-issuer.yaml
```
Run letsencrypt-prod:
```
kubectl apply -f production-issuer.yaml
```
Now you should uncomment everything in the [ingress.yaml](https://github.com/BohdanHavran/DevOps-Basecamp-HomeTask/blob/main/task13/ingress.yaml) file and run it again:
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
Check on the status of the issuer after you create it:
```
kubectl describe issuer letsencrypt-staging
```
![image](https://user-images.githubusercontent.com/7732624/217269070-8e596090-2d61-42f9-bb1c-688627221ff4.png)

Cert-manager will read annotations and create a certificate, which you can request and see:
```
kubectl get certificate
```
![image](https://user-images.githubusercontent.com/7732624/217268081-f0cae2d3-e623-4f81-8dab-fd5063c36bd4.png)

Now you should replace "letsencrypt-staging" with "letsencrypt-prod" in the [ingress.yaml](https://github.com/BohdanHavran/DevOps-Basecamp-HomeTask/blob/main/task13/ingress.yaml) file and run it again:
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


Get ingress-nginx:

![image][12]

##

Check the Services:

![image][13]

## Task 3, 4

Register free DNS-name:

![image][15]

##

Run `web-issuer.yaml`

![image][16]

##

Check the Clusterissuer

![image][17]

##

Check our services:

![image][18]

##

Don't forget to enable support flags `http` and `https` protocols:

![image][19]

##

Check our page:

![image][20]


## Useful links for Tasks:
- [Install Docker Engine][2]
- [Configuration the timezone during build][3]
- [Useful Youtube Channel][4]





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
[16]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/16.jpg?raw=true
[17]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/17.jpg?raw=true
[18]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/18.jpg?raw=true
[19]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/19.jpg?raw=true
[20]: https://github.com/body21033/DevOps_BC/blob/main/Lab_13/img/20.jpg?raw=true
