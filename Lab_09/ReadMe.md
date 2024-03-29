# HomeTask_09 - Jenkins (GitHub + Telegram)


## Requirements:
 - Setup Jenkins on server;
 - Create Multibranch pipeline and connect it with the Gitlab/Github project repository with the Jenkinsfile;
 - Jenkinsfile should have several stages: build, tests, notification (telegram bot, etc.);
 - [Optional] Use branch conditions, vars, etc;
 - [Optional] Create script for automated Jenkins setup (with user, plugins).

## Preparation:
 - First you need to download [Visual Studio Code][1] ;
 - Next, you need to create an ETC-2 on AWS;
 - Then make a bash-script with commands about running Jenkins with some plugins and run it;
 - Your Jenkins will have an ETC-2 Public Address `+ :8080` (port);
 - Use standart Login / Pass = `admin / admin` (but It`s better if you change it to more secure information);
  
  
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

