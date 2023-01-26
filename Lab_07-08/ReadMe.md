# HomeTask_07-08 - Cloud Security and System Hardening


#### - I used 2 linux machines (first - Main, second - Pam-Test)
#### - Python installed (2.7 or 3.5+);
#### - established password-less connection from one machine (controller) to others;

#### - Creating an inventory file with 4 groups - [hosts](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/hosts.txt)

### Making 2 roles:

#### - creating an empty file `/etc/iaac` with rigths `0500` - [an_empty_file](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/roles/create_an_empty_file/tasks/main.yml)

#### - fetch linux distro name/version - [linux-name-and-version](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/roles/fetch_linux_name/tasks/main.yml)

## My servers on the AWS
##### 1x `First server`, 1x `Pam-Test`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/img/1.png?raw=true)

## My Ansible-tree
 ##### It has 2 roles: `create_an_empty_file`, `fetch_linux_distro_name`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/img/2.png?raw=true)

## Successful completion of the [playbook](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/playbook1.yml)

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/img/3.png?raw=true)
