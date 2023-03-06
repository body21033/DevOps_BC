# HomeTask_14 - K8s (Helm)

## Requirements:
### Tasks

1. Deploy Nginx via helm with Ingress configuration:

a. Set variables via value yaml

b. Use “helm upgrade --install --atomic …” to change some parameters (Example:
number of pods)

2. Create and deploy your own chart with the Pacman (https://hub.docker.com/r/golucky5/pacman ) game. 
(https://helm.sh/docs/chart_template_guide/getting_started/ )

Extra Task 3 (not mandatory)

3. Deploy MERN stack (MongoDB, Express.js, React.js, Node.js) via helm.

### My [`Web-page`][9]

### Task 1

Create and configurate Vm:

![image][01]

Add some command for flex-use our `helm`:

 ```
 sudo chown -R $USER /home/body21033/.kube/config
 
 sudo chmod 700 /home/body21033/.kube/config
 
 ```

2. Install Helm

        curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
        chmod 700 get_helm.sh
        ./get_helm.sh
    
3. Install NGINX Ingress Controller using Helm

        helm repo add nginx-stable https://helm.nginx.com/stable
        helm repo update
    
4. Check our helm version:

       

![image][1]

Check `nginx-tree`:


![image][3]

And `pacman tree`:


![image][4]

Run helm install for `nginx`:


![image][2]

Make sure your ports `http` and `https` are enabled!

![image][7]

See our `nginx` at the web-page:


![image][5]

Change some properties with using `helm --set`:


![image][8]

And install app with `helm + path/pacman/`:


![image][6]


Check `pacman-page`:

![image][10]

## Useful links for Tasks:
- [Install Docker Engine][20]
- [Dynv6.com][21]
- [Cert-manager][23]
- [Useful Youtube Channel][22]

## Task 3

### In progress.... will be created after final-task );



[01]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/01.jpg?raw=true
[1]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/1.png?raw=true
[2]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/2.jpg?raw=true
[3]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/3.jpg?raw=true
[4]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/4.jpg?raw=true
[5]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/5.jpg?raw=true
[6]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/6.jpg?raw=true
[7]: https://github.com/body21033/DevOps_BC/raw/main/Lab_13/img/19.jpg?raw=true
[8]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/8.jpg?raw=true
[9]: https://chumachenko-b.dns.army/
[10]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/10.jpg?raw=true
[20]: https://docs.docker.com/engine/install/ubuntu/
[21]: https://dynv6.com/
[22]: https://www.youtube.com/watch?v=-lLT0vlaBpk&list=PLg5SS_4L6LYvN1RqaVesof8KAf-02fJSi&index=12&ab_channel=ADV-IT
[23]: https://cert-manager.io/

