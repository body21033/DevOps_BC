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

![6]

### Task 2
1. Prepare private and public network
2. Prepare one dockerfile based on ubuntu with the ping command
3. One container must have access to the private and public networks the second container
must be in the private network
4. - A) Run a container that has access to the public network and ping some resources (
example: google.com ); 
   - B) The second container ping the first container via a private network;

5. Report save in GitHub repository

## Preparation:
 - First you need to create an `ETC-2 on AWS`;
 - Next, you need to install `Docker Engine` (In my case, I wrote a handy bash script);
 - Then make a `Dockerfile`;
 - After `built` our Dockerfile;
 - And `run` it;
 - Your `Docker-Container` will have an ETC-2 Public Address `+ :8080` (port);
 - `sudo usermod -aG docker $USER`
   
## My results:

- If you want to check my first-server, follow next link:
  - [Docker-server-1](http://3.123.229.58:8080/)
  
# Execution 1:
  
* Checking the status of the `Docker service`:  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/1.jpg?raw=true)

##

* Building and Viewing `Dockerfile`:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/2.jpg?raw=true)

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





# Execution 2 

* Let's review the contents of the `Dockerfile` and the built `Image`: 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/78.jpg?raw=true)

##

* Let's review our running containers: 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/77.jpg?raw=true)

##
 
  * Let's create a `Public-network` and a `Private-network`:  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/71.jpg?raw=true)

##

* Let's start the `Public-container` and review its network configurations:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/72.jpg?raw=true)

##

* Let's add a `Private-network` to the previous `Public-container` (through the second console): 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/73.jpg?raw=true)

##

* Let's launch a `Private-container` and a `Private-network` to it:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/74.jpg?raw=true)

##

* Ping from `Private-container` ->> `Public-container` and `Google.com` :

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/75.jpg?raw=true)

##

* Ping from `Public-container` ->> `Private-container` and `Google.com` :

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_10/img/76.jpg?raw=true)

##

## Useful links for Task 2:
- [How to add comands to Dockerfile (RUN)][5]
- [Docker Network Create][6]
- [nicolaka/netshoot][7]
- [Docker #1][8]
- [What is a Docker][9]
- [Docker's Networks][10]
- [Docker's Build's][11]

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
