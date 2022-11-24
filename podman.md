# Podman and Buildah

after this doc is executed
- http://localhost:9090 cockpit (linux system accounts)
- http://localhost:2000 Jenkins (requires docker at the moment - need to research podman or buildah usage)
-                       mysql
-                       kafka

## References
- https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md

```sh
apt install podman buildah
podman run quay.io/podman/hello

# visual manager
apt install cockpit cockpit-podman
systemctl status cockpit
systemctl start cockpit

# podman-compose
apt install python3-pip
pip3 install podman-compose

# if not already presnt in path add `export PATH=$PATH:$HOME/.local/bin` to ~/.zshrc
```

```sh
buildah build -f Dockerfile -t llc-dodropin-jenkins
```
