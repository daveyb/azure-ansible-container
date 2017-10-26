# azure-ansible-container
- A container for use with Azure and Windows VMs
- [https://hub.docker.com/r/davidbenedic/azure-ansible-container/](https://hub.docker.com/r/davidbenedic/azure-ansible-container/)

## Pull from Docker Hub Registry
```
docker pull davidbenedic/azure-ansible-container:latest
```

## Using the azure-ansible-container

1. Start the container, mounting the host azure credentials file _and_ the ansible-azure-windows repository into the container

```
docker run --rm -it -v C:\Users\<username>\.azure:/root/.azure -v C:\Users\<username>\<path-to-git-repo>:/ansible davidbenedic/azure-ansible-container:latest
```