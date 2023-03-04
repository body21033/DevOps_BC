
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

![image](https://github.com/body21033/DevOps_BC/blob/main/Lab_12/img/get%20service.jpg?raw=true)


### 4
```
kubectl get service -n k12
NAME                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
nginx--cluster--ip   ClusterIP   10.104.254.237   <none>        80/TCP         2m21s
nginx--nodeport      NodePort    10.102.253.38    <none>        80:30789/TCP   2m21s


kubectl apply -f cluster-ip.yaml -n k12
job.batch/cluster-ip-curl-job created
------------------------------------------
kubectl apply -f node-port.yaml -n k12
job.batch/nodeport-curl created

```
