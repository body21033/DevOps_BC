# HomeTask_06 - Terraform (AWS+Azure)


## Requirements:
 - Create two terraform modules for provisioning one AWS and one Azure instance;
 - Use variables;
 - Provision one SSH public key for created instances;
 - Make your instances available to everyone on the web;
 - Add public IP of instances to Output Values;  - Install Grafana to your instances;
 - Create a beautiful repository structure and clear readme file with information about your project like for your grandma;
 - Add terraform apply output to the last section of your readme like in example.

## Preparation:
 - First you need to download [Visual Studio Code][1] ;
 - Then create a directory with tf files and two modules (AWS +Azure);
 - You need to create a [ssh-key-pair][2] from your main PC;
 - Need to create a Credentials for [AWS][3] and [Azure][4] ;
 - After setting all the variables, you should run the command `terraform init` , `terraform fmt` - to align the syntax;
 - Behind it is `terraform plan` - to once again, make sure that it is correct;
 - The final command `terraform apply` - start the infrastructure deployment process;
 - If you need to remove the infrastructure and all related modules then use the command `terraform destroy`;
 - At the end of the process, the public addresses of the servers will also be visible in terminal from outputs.
  
## My results:

- If you want to check my servers, follow next links:
  - [AWS-server](http://3.122.53.104/)
  - [Azure-server](http://104.46.33.228/)

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_06/img/outputs.jpg?raw=true)

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_06/img/AWS-server.jpg?raw=true)
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_06/img/Azure-server.jpg?raw=true)

[1]: https://code.visualstudio.com/download
[2]: https://www.youtube.com/watch?v=1GnEgFAFhN8&ab_channel=MorethanCertified
[3]: https://www.youtube.com/watch?v=4u2HQCSuQpo&t=152s&ab_channel=ADV-IT
[4]: https://www.youtube.com/watch?v=IHHIXf39Igo&t=194s&ab_channel=SkylinesAcademy
