# HomeTask_11 - Kubernetes


## Requirements:
### Task 1
1. Install docker
2. Prepare a dockerfile based on Apache or Nginx image
3. Added your own index.html page with your name and surname to the docker image
4. Run the docker container at port 8080
5. Open page in Web Browser
6. Report save in GitHub repository

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







[1]: http://3.123.229.58:8080/
[2]: https://docs.docker.com/engine/install/ubuntu/


