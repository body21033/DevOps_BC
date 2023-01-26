# HomeTask_07-08 - Cloud Security and System Hardening


#### - I used 2 linux machines (first - Main, second - Pam-Test)
#### - Configured access rights to servers 
#### - Created ansible.cfg
#### - Created an inventory file hosts.txt
#### - Created playbook
#### - Added variables (server1)
#### - Were built 3 roles: 
1) Show a hostname, 
2) Install the PAM, 
3) Using pass without username 

### Making 2 roles:

#### - creating an empty file `/etc/iaac` with rigths `0500` - [an_empty_file](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/roles/create_an_empty_file/tasks/main.yml)

#### - fetch linux distro name/version - [linux-name-and-version](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/roles/fetch_linux_name/tasks/main.yml)

## My servers on the AWS
##### 1x `First server`, 1x `Pam-Test`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/AWS%20x2.jpg?raw=true)

## My Ansible-tree
 ##### It has 2 roles: `create_an_empty_file`, `fetch_linux_distro_name`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/img/2.png?raw=true)

## Successful completion of the [playbook](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/playbook1.yml)

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_05/img/3.png?raw=true)
