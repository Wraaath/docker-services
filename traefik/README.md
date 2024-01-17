# 🚦 Traefik
![Traefik](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.swnetwork.de%2Ffileadmin%2Fuser_upload%2Fpartner%2Ftraefiklabs%2Ftraefik-proxy-logo--white.png&f=1&nofb=1&ipt=e0bd7fb2fe37421a3252ee66208e8dc54bbeef8010b9bebb379dadf03c535b64&ipo=images)

[Traefik](https://github.com/traefik/traefik) is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy. It integrates with your existing infrastructure components (Docker, Swarm mode, Kubernetes, Marathon, Consul, Etcd, Rancher, Amazon ECS,...) and configures itself automatically and dynamically.

## 📜 Instructions
Do a `docker network create proxy` \
Be sure to `chmod 600 acme.json`

Creating a password for compose file:
```bash
sudo apt update
sudo apt install apache2-utils

echo $(htpasswd -nB <USER>) | sed -e s/\\$/\\$\\$/g
```