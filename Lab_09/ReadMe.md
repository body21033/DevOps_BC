# HomeTask_09 - Jenkins (GitHub + Telegram)


## Requirements:
 - Setup Jenkins on server;
 - Create Multibranch pipeline and connect it with the Gitlab/Github project repository with the Jenkinsfile;
 - Jenkinsfile should have several stages: build, tests, notification (telegram bot, etc.);
 - [Optional] Use branch conditions, vars, etc;
 - [Optional] Create script for automated Jenkins setup (with user, plugins).

## Preparation:
 - First you need to download [Visual Studio Code][1] ;
 - Next, you need to create an ETC-2 on [AWS];
 - Then make a bash-script with commands about running Jenkins with some plugins and run it;
 - Your Jenkins will have an ETC-2 Public Address + :8080 (port);
 - Use standart Login / Pass = `admin / admin` (but It`s better if you change it to more secure information);
  
  
## My results:

- If you want to check my servers, follow next links:
  - [Jenkins-server](http://18.193.116.46:8080/)
  
## Execution:
  
* Create 2 brances: `main / dev` (`main`- we use for stable version, `dev` - we use for testing new versions);  
  
  
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/1.jpg?raw=true)

##

* We need to give webhooks from GitHub to Jenkins;

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/2.jpg?raw=true)

##

* Put our webhooks to Jenkins' field; 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_09/img/3.jpg?raw=true)

##

* Create a telegram-bot and give a API-token for Jenkins' access-token;

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

[1]: https://code.visualstudio.com/download
[2]: https://www.youtube.com/watch?v=1GnEgFAFhN8&ab_channel=MorethanCertified
[3]: https://www.youtube.com/watch?v=4u2HQCSuQpo&t=152s&ab_channel=ADV-IT
[4]: https://www.youtube.com/watch?v=IHHIXf39Igo&t=194s&ab_channel=SkylinesAcademy

