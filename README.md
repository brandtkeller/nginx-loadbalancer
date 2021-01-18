# Nginx Loadbalancer

A simple configuration for using nginx as a load balancer.
This is used for loadbalancing traffic in-front of a RKE2 kubernetes cluster.
Current Port configuration:
* 443 for https ingress traffic
* 6443 for the kubernetes API traffic (kubectl etc)
* 9345 for Agent -> Server Traffic

## Configuration
Modify the lb.conf file to contain the servers you want to load-balancee https traffic across

## Image build
```
buildah bud -t nginx-loadbalancer:latest .
```

## Using the image
```
sudo podman run -d --name nginx-lb -p 443:443 nginx-loadbalancer:latest
```