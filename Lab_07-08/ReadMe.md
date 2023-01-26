# HomeTask_07-08 - Cloud Security and System Hardening

 - I used 2 linux machines (first - Main, second - Pam-Test)
 - Configured access rights to servers 
 - Created [ansible.cfg][1]
 - Created an inventory file [hosts.txt][2]
 - Created a [playbook][3]
 - Added variables [server1][4]
 
  <b2>Were built 3 roles:</b2> 
 
1. Show a [hostname][5]; 
2. [Install the PAM][6]; 
3. Using [pass without username][7] 


## My servers on the AWS
#### 1x `First server`, 1x `Pass-Test`

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
 A complex password attempt was successful "Hallses1504":

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/norm%20pass.jpg?raw=true)

[1]: https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/ansible.cfg
[2]: https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/hosts.txt
[3]: https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/playbook1.yml
[4]: https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/group_vars/server1
[5]: https://github.com/body21033/DevOps_BC/blob/44dd829b28f50319e8da90f37e1aaf52bbe519db/Lab_07-08/roles/hostname/tasks/main.yml
[6]: https://github.com/body21033/DevOps_BC/blob/44dd829b28f50319e8da90f37e1aaf52bbe519db/Lab_07-08/roles/install_pam/tasks/main.yml
[7]: https://github.com/body21033/DevOps_BC/blob/44dd829b28f50319e8da90f37e1aaf52bbe519db/Lab_07-08/roles/pass_without_username/tasks/main.yml
