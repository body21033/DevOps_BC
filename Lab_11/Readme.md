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
    
# Execution 1:
  
* Create `kubemaster` and `kubenode`:  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_11/img/VMs.jpg?raw=true)

##

* Add our IP-addresses for `master` and `node`:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_11/img/hosts.jpg?raw=true)

##

## Final Result: 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_11/img/finish.jpg?raw=true)



## Useful links for Task 1:
- [Install K8s][1]
- [Link on Setup Kubernetes.docx][2]







[1]: https://youtu.be/q_nj340pkQo?list=PLg5SS_4L6LYvN1RqaVesof8KAf-02fJSi
[2]: https://docs.google.com/document/d/1pdjbDpzc2l23B_w84-m2ft1JdLVYXsvA/edit



