## Prerequisites:

### Install Kubectl

### Install Minikube
### Install Virtualbox



#### Install Kubectl

```
brew install kubectl
```

Verify 

```
kubectl --version
```

#### install minikube

```
brew install minikube
or
brew upgrade minikube //if already installed
```


####  install virtualbox

```
minikube start --vm-driver=virtualbox
```

Verify:

```
kubectl get ns
returns:

NAME                   STATUS   AGE
default                Active   79s
kube-node-lease        Active   82s
kube-public            Active   82s
kube-system            Active   82s
kubernetes-dashboard   Active   68s
```

run on the provided folder:

```
kubectl apply -f . 
kubectl get pods -n training
```

Wait for some pods to run then:

```
kubectl delete namespace training
```

Prerequisites end.


# Training topics

Topics:

1. How K8s works, overview of Master/node architecture

1. What's a pod

    pod1.yml
    
    yaml file review
    
    Deploy pod
    
    Describe, Logs, Exec
    
    Delete pod


1. What's a namespace:

    1namespace.yml
  
    Review yaml file
  
    Deploy Namespace
  
    pod2.yml
  
    Deploy a pod into a Namespace
  

1. What's a deployment

    deployment1.yml
  
    Review yaml file
  
    Deploy deployment
  
    Describe deployment view
  
    Delete pod

    Rolling updates
  
        Show nginx version
    
        deployment2.yml
    
        Show nginx version  
    
        See rolling update
      
        `k rollout undo deployment my-first-deployment #roll outs`



1. Debuggin our pods

    deployment3.yml
  
    Debugging failing pods


1. Readiness y liveliness tests

    deployment4.yml
  
    How Readiness and liveliness tests works

    deployment5.yml //failing deployment

    deployment4.yml //back to healthy all good.
  

1. Types of services

    service1.yml
   
    Review yaml file
   
    How Services Works
   
    Types of Services:
   
        NodePort
    
        IpCluster
    
        LoadBalancer

    service2.yml

    k port-forward web-app-6557d94cdc-rl7cp 9090:9090

    minikube service web-app-service -n training --url
    to obtain the exposed url


