# git-server container

## key generation

- `ssh-keygen -t rsa` using path like _~/.ssh/git-server-rsa_
- `(s)cp ~/ssh/git-server-rsa.pub ./keys`
- `docker restart git-server`

```text
Host git.localhost
  Hostname 127.0.0.1
  Port 2222
  User git
  IdentityFile ~/.ssh/git-server-rsa
```

- check configuration `ssh git@<ip-docker-server> -p 2222`
- check configuration `ssh git@git.localhost -p 2222`

## add repos

- `git init --bare repos/appserver-common.git`
- go to the repo and
- `git remote add git-lcl ssh://git.localhost/git-server/repos/appserver-common.git`
- `git push -u git-lcl main`

## Jenkins does not connect

- the fetch head call works, but the actual fetch clone process does not.
- will configure nginx http readonly open reop via symlinks
