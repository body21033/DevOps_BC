# HomeTask_11 - Kubernetes


## Requirements:
-	4 CPU;
-	8 GB RAM;
-	Ubuntu (only for this task);
-  In our case we should use a GCP Vm.



## Preparation:
 - First you need to create an `2 VM instances on GCP`;
 - Next, you need to check your network connection (ping from `master` to `node`);
 - Then write some parametrs to /etc/hosts (with master and node IP-addresses);
 - After it download some packets K8s for `double-kube`;
 - And `run` it;
 - Your `Docker-Container` will have an ETC-2 Public Address `+ :8080` (port);
   
## My results:

- If you want to check my first-server, follow next link:
  - [Docker-server-1](http://3.123.229.58:8080/)
  
# Execution 1:
  
* Create `kubemaster` and `kubenode`:  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_11/img/VMs.jpg?raw=true)

##

* Add our IP-addresses for `master` and `node`:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_11/img/hosts.jpg?raw=true)

##

* Build our `Dockerfile`: 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/3.jpg?raw=true)

##

* Browsing our `Images`:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/4.jpg?raw=true)

##

* Run our `Image`:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/5.jpg?raw=true)

##

* Go to web page ([`Public-IP +:8080 port`][1]);

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/6.jpg?raw=true)



## Useful links for Task 1:
- [Install Docker Engine][2]
- [Configuration the timezone during build][3]
- [Useful Youtube Channel][4]







[1]: http://3.123.229.58:8080/
[2]: https://docs.docker.com/engine/install/ubuntu/


