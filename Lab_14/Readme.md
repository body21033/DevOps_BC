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

### Task 1

Create and configurate Vm:

![image][01]

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

See our `nginx` at the web-page:


![image][5]




![image][8]




![image][6]




![image][10]





[01]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/01.jpg?raw=true
[1]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/1.png?raw=true
[2]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/2.jpg?raw=true
[3]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/3.jpg?raw=true
[4]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/4.jpg?raw=true
[5]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/5.jpg?raw=true
[6]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/6.jpg?raw=true
[8]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/8.jpg?raw=true
[10]: https://github.com/body21033/DevOps_BC/blob/main/Lab_14/img/10.jpg?raw=true
