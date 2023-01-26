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


## My servers on the AWS
##### 1x `First server`, 1x `Pam-Test`

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/AWS%20x2.jpg?raw=true)


Я перевірив, що легкий пароль "11" був прийнятий без зауважень:
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/easy-pass.jpg?raw=true)

Запустимо playbook та перевіримо попередню дію:
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/Ansible-playbook.jpg?raw=true)

Спробуємо повторно додати легкий пароль "22"
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/ubuntu%20changes.jpg?raw=true)

А тепер для root-користувача:
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/root%20changes.jpg?raw=true)

Успішна спроба складного паролю "Hallses1504"
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_07-08/img/norm%20pass.jpg?raw=true)
