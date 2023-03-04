### 1
Link on [WorkerNode.txt][1];


### 2
Create a namespaces:
```
kubectl create ns k12
namespace/k12 created
kubectl get ns
NAME               STATUS   AGE
calico-apiserver   Active   29h
calico-system      Active   29h
default            Active   29h
k12                Active   2s
kube-node-lease    Active   29h
kube-public        Active   29h
kube-system        Active   29h
tigera-operator    Active   29h

```
### 3
Show Deployment:
```
kubectl apply -f deployment-final.yaml -n k12
deployment.apps/nginx--cluster created
service/nginx--cluster--ip created
service/nginx--nodeport created

kubectl describe deployment nginx--cluster -n k12
Name:                   nginx--cluster
Namespace:              k12
CreationTimestamp:      Fri, 03 Mar 2023 23:35:16 +0000
Labels:                 app=nginx
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               app=nginx
Replicas:               3 desired | 3 updated | 3 total | 3 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=nginx
  Containers:
   nginx:
    Image:        nginx:latest
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   nginx--cluster-6b7f675859 (3/3 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  83s   deployment-controller  Scaled up replica set nginx--cluster-6b7f675859 to 3
```
Show pods: 
```

kubectl get pods -n k12
NAME                              READY   STATUS      RESTARTS   AGE
cluster-ip-curl-job-q86r2         0/1     Completed   0          23m
nginx--cluster-6b7f675859-grs6p   1/1     Running     0          158m
nginx--cluster-6b7f675859-h4t4f   1/1     Running     0          158m
nginx--cluster-6b7f675859-lwg52   1/1     Running     0          158m
nodeport-curl-bx8db               0/1     Completed   0          23m

```
 Show status service:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/nginx--cluster.jpg?raw=true)

##

 Show pods' status:
 
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/pods%20status.jpg?raw=true)

##

Curl from WorkerNode to `ClusterIP`:

 ![image]()

##
 
Curl from WorkerNode to `NodePort`

![image]()

### 4

Check `ClusterIP` and `NodePort`:
 
![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/get%20service.jpg?raw=true)

##

Apply NodePort.yaml:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/node.jpg?raw=true)

##

Apply ClusterIP.yaml:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/cluster.jpg?raw=true)

## 5

Prepare Cronjob.yaml:
```
apiVersion: batch/v1
kind: CronJob
metadata:
  name: nginx-port-status
  namespace: k12
spec:
  schedule: "*/3 * * * *"
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: nmap
            image: instrumentisto/nmap
            imagePullPolicy: IfNotPresent
            command:
            - /bin/sh
            - -c
            - echo 'ClusterIP status:'; nmap -p 80 10.104.254.237 --script=http-headers
          restartPolicy: OnFailure
      backoffLimit: 3
```

##

Describe cronjob:

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/cronjob.jpg?raw=true)




[1]: https://github.com/body21033/DevOps_BC/blob/f36155b02ef3ed063f50f35fb5f3468215d8b447/Lab_12/node-info.txt
