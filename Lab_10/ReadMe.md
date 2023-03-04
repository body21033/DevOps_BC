# HomeTask_10 - Docker


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

[1]: http://3.123.229.58:8080/
[2]: https://docs.docker.com/engine/install/ubuntu/
[3]: https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
[4]: https://www.youtube.com/watch?v=I18TNwZ2Nqg&t=771s&ab_channel=ADV-IT
[5]: https://computingforgeeks.com/how-to-install-ifconfig-on-ubuntu-focal-fossa/
[6]: https://docs.docker.com/engine/reference/commandline/network_create/
[7]: https://hub.docker.com/r/nicolaka/netshoot
[8]: https://www.youtube.com/watch?v=_uZQtRyF6Eg&list=PLQOKmCTb4rU2FWKhUHPsRTHS6ZErBpXGt&index=1&t=7992s&ab_channel=BogdanStashchuk
[9]: https://www.youtube.com/watch?v=VeiddqzBMls&list=PLQOKmCTb4rU2FWKhUHPsRTHS6ZErBpXGt&index=2&ab_channel=RostislavO.
[10]: https://www.youtube.com/watch?v=ctJnI43ermQ&list=PLQOKmCTb4rU2FWKhUHPsRTHS6ZErBpXGt&index=3&ab_channel=RomNero
[11]: https://youtu.be/wskg5903K8I?list=PLQOKmCTb4rU2FWKhUHPsRTHS6ZErBpXGt
