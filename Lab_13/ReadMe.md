# HomeTask_11 - K8s (3)


## Requirements:
### Task 1
1. Create VM
2. Configure VM
3. Add your SSH public key
4. Install Ingress-controller
5. Prepare domain name (free resource https://dynv6.com/ )
6. Configure cert-manager (https://cert-manager.io/) with Letsencrypt
7. Prepare Nginx deployment:
- Deployment
- Service
- Ingress (which will be connected to ClusterIssuer and use the letsencrypt certificate)

### Task 1

Create and configurate Vm:

![image][1]

##

Докинем kubespray:

![image][2]

##

Изменим данные в файле  inventory file:

![image][3]

##

Применим переменные

![image][4]

##

Мы перешли в kubespray:

![image][5]

##

Запуск Ansible:

![image][6]

##

Используя ключ мы зашли на Node:

![image][7]

##

Создаём папку:

![image][8]

##

Переглянемо Nodes:

![image][9]

##

Apply `nginx-ctl.yaml`:

![image][10]

##

Apply `path_provisioner`:

![image][11]

##

Get ingress-nginx:

![image][12]

##

Check the Services:

![image][13]

##

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

Не забудьте включити підтримку `http` and `https` protocols:

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
