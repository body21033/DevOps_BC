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
 - First you need to create an ETC-2 on AWS;
 - Next, you need to install Docker Engine (In my case, I wrote a handy bash script);
 - Then make a Dockerfile;
 - After `built` our Dockerfile;
 - And `run` it;
 - Your Docker-Container will have an ETC-2 Public Address `+ :8080` (port);
   
## My results:

- If you want to check my server, follow next link:
  - [Jenkins-server](http://18.193.116.46:8080/)
  
## Execution:
  
* Create 2 branches: `main / dev` (`main`- we use for stable version, `dev` - we use for testing new versions);  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/1.jpg?raw=true)

##

* We need to give webhooks from GitHub to Jenkins;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/2.jpg?raw=true)

##

* Put our webhooks to Jenkins' field; 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/3.jpg?raw=true)

##

* Create a telegram-bot (by `@BotFather` on Telegram) and give a API-token for Jenkins' access-token;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/4.jpg?raw=true)

##

* Lets confirm our actions at Jenkins' Telegram;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/5.jpg?raw=true)

##

* We return to Telegram and see the confirmation from Jenkins' approved;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/6.jpg?raw=true)

##

* We return to Jenkins and run the task;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/7.jpg?raw=true)

##

* After that, a notification about the building arrives in the Telegram bot;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/8.jpg?raw=true)

##

* We can see our stages;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/10.png?raw=true)

##

* We see that the 3rd stage is performed only for one of branch.

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/9.jpg?raw=true)

##

## Useful links:
- [Jenkins syntax][2]
- [Pipepline with a Webhook on Jenkins][3]
- [Telegram bot][4]

[1]: https://code.visualstudio.com/download
[2]: https://www.jenkins.io/doc/book/pipeline/syntax/#post
[3]: https://valaxytech.medium.com/multibranch-pipeline-on-jenkins-with-webhook-a65decede4f8
[4]: https://plugins.jenkins.io/telegram-notifications/


