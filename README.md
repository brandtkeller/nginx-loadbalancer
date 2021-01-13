# Nginx Loadbalancer

A simple configuration for baking an https loadbalancer configuration into an nginx container.

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