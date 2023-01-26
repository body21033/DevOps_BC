# HomeTask_07-08 - Cloud Security and System Hardening

 - I used 2 linux machines (first - Main, second - Pam-Test)
 - Configured access rights to servers 
 - Created ansible.cfg
 - Created an inventory file hosts.txt
 - Created playbook
 - Added variables (server1)
 
 - Were built 3 roles: 
 ```
1. Show a hostname, 
2. Install the PAM, 
3. Using pass without username 
```

## My servers on the AWS
##### 1x `First server`, 1x `Pass-Test`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/AWS%20x2.jpg?raw=true)


 I checked that the easy password "11" was accepted without any comments:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/easy-pass.jpg?raw=true)
---------------------------------------------------------------------------

 Let's run the playbook and check the previous action: 

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/Ansible-playbook.jpg?raw=true)
---------------------------------------------------------------------------

 Let's try to re-add the easy password "22":

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/ubuntu%20changes.jpg?raw=true)
---------------------------------------------------------------------------

 And now for the root user:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/root%20changes.jpg?raw=true)
---------------------------------------------------------------------------
 Успішна спроба складного паролю "Hallses1504":

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/norm%20pass.jpg?raw=true)
