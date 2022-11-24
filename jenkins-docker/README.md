# Jenkins management repo

- initially based on http://francoisbotha.io/2019/09/27/setting-up-jenkins-on-your-local-machine/
- note: mapping the Docker socket on the host to the container - do not do this in production.
- note: should open / activate port 4243 for Docker REST api usage by Jenkins

## Setup

- mkdir ./jenkins_home
- create Dockerfile (BlueOcean image)
- create docker-compose.yaml exposing port 2000 and using volume ./jenkins_home/
- docker compose up -d
- localhost:2000
- retrive initial password
- install suggested plugins
- create account
- enable Manage Jenkins -> Plugin Manager -> Available plugins
  - `custom tools plugin`
  - `Docker pipeline`

## if using local git deamon for Jenkins builds (ie: my use case)

- add this file `/etc/systemd/system/git-daemon.service`

```text
[Unit]
Description=Start Git Daemon

[Service]
ExecStart=/usr/bin/git daemon --reuseaddr --base-path=/home/chuck/workspace --export-all 

Restart=always
RestartSec=500ms

StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=git-daemon

User=chuck #git
Group=chuck #git

[Install]
WantedBy=multi-user.target
```

- `sudo systemctl enable git-daemon`
- `sudo systemctl start git-daemon`
- `systemctl status git-daemon`
- `sudo systemctl daemon-reload`
- port 9418 should be opended
- in each repo to expose as unauthenticated readonly `touch git-daemon-export-ok`

## if needed to sh into Jenkins (_**should be unnecessary**_)

```bash
docker exec -it jenkins sh
```

## Using a repos Jenkin pipeline file

- Jenkins Dashboard -> `New Item`
- Name it
- select `Pipeline script from SCM`
- 
