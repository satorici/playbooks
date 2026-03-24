# Email

Playbooks for email address discovery and OSINT gathering from domains, GitHub repositories, and user accounts.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [gauplus-nuclei.yml](gauplus-nuclei.yml) | Gauplus+Nuclei | Get the URLs of a domain and search for email addresses |
| [gitsome.yml](gitsome.yml) | gitSome | Gets emails associated with a GitHub account |
| [gitxray-repo.yml](gitxray-repo.yml) | Gitxray | Get GitHub repository's emails |
| [gitxray-user.yml](gitxray-user.yml) | Gitxray | Get GitHub contributors' emails |
| [theharvester.yml](theharvester.yml) | theHarvester | Get e-mails, subdomains and names |

### Authenticated

| Playbook | Tool | Description |
|----------|------|-------------|
| [auth/gitxray-repo.yml](auth/gitxray-repo.yml) | Gitxray | Get GitHub repository's emails authenticated |
| [auth/gitxray-user.yml](auth/gitxray-user.yml) | Gitxray | Get GitHub contributors' emails authenticated |

## Usage

```bash
satori run satori://email/gauplus-nuclei.yml -d DOMAIN="satori.ci" --report --output
satori run satori://email/gitsome.yml -d USER=octocat --report --output
satori run satori://email/gitxray-repo.yml -d REPO="satorici/playbooks" --report --output
satori run satori://email/gitxray-user.yml -d REPO=satorici/playbooks -d USER=satoridev01 --report --output
satori run satori://email/theharvester.yml -d DOMAIN="umd.edu" --report --output
satori run satori://email/auth/gitxray-repo.yml -d REPO=satorici/playbooks -d GITHUB_PAT=TBC --report --output
satori run satori://email/auth/gitxray-user.yml -d REPO=org/repo -d USER=whatever -d GITHUB_PAT=TBC --report --output
```
