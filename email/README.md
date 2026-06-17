# Email

Playbooks for email address discovery and OSINT gathering from domains, GitHub repositories, and user accounts.

## Email discovery suite

`all.yml` is the framework entrypoint: it imports the per-source playbooks and merges their output (sort + unique) into one clean roster of addresses on the domain. Each source prints only the matching emails to stdout; the orchestrator combines them via `${{import...stdout}}` references.

| Playbook | Source | Description |
|----------|--------|-------------|
| [all.yml](all.yml) | all sources | Imports theharvester + github + spider and merges/dedupes the emails. Output: addresses only, one per line. |
| [theharvester.yml](theharvester.yml) | theHarvester | Search-engine/OSINT email discovery (success = at least one `@`). |
| [github.yml](github.yml) | GitHub commits | Resolves the domain's GitHub org and harvests committer/author emails on the org domain (self-contained). |
| [spider.yml](spider.yml) | website crawl | Crawls the site (homepage links + common pages + sitemap) and extracts emails matching the domain core. |

## Other discovery

| Playbook | Tool | Description |
|----------|------|-------------|
| [email-security.yml](email-security.yml) | Email Security | Checks email authentication and anti-spoofing configuration by querying SPF, DMARC, and DKIM DNS records, providing an overall email security score. |
| [gauplus-nuclei.yml](gauplus-nuclei.yml) | Gauplus+Nuclei | Get the URLs of a domain and search for email addresses |
| [gitsome.yml](gitsome.yml) | gitSome | Gets emails associated with a GitHub account |
| [hunter.yml](hunter.yml) | Hunter.io | Discovers professional email addresses associated with a domain using Hunter.io's database; returns addresses, sources, and confidence scores. Requires a Hunter.io API key. |
| [gitxray-repo.yml](gitxray-repo.yml) | Gitxray | Get GitHub repository's emails |
| [gitxray-user.yml](gitxray-user.yml) | Gitxray | Get GitHub contributors' emails |

### Authenticated

| Playbook | Tool | Description |
|----------|------|-------------|
| [auth/gitxray-repo.yml](auth/gitxray-repo.yml) | Gitxray | Get GitHub repository's emails authenticated |
| [auth/gitxray-user.yml](auth/gitxray-user.yml) | Gitxray | Get GitHub contributors' emails authenticated |

## PhishingBox (authorized phishing exercises)

Playbooks under [phishingbox/](phishingbox/) drive an authorized self-phishing exercise via the PhishingBox API (and an AI lure generator).

| Playbook | Description |
|----------|-------------|
| [phishingbox/template-ai.yml](phishingbox/template-ai.yml) | Spiders the target site and generates a brand-matched phishing email (lure + logo + colors) with an LLM (OpenRouter). |
| [phishingbox/create-template.yml](phishingbox/create-template.yml) | Creates a phishing email template in PhishingBox (api/v2/template/create). |
| [phishingbox/make-template.yml](phishingbox/make-template.yml) | One-run harness that imports template-ai (spiders the domain and generates a brand-matched lure) and create-template (creates the template in PhishingBox). |
| [phishingbox/load-targets.yml](phishingbox/load-targets.yml) | Creates a PhishingBox group and bulk-loads recipients (api/v2/group/create + target/addBatch). |
| [phishingbox/launch-campaign.yml](phishingbox/launch-campaign.yml) | Creates and schedules a phishing campaign against one or more groups using one or more templates (authorized simulation). |
| [phishingbox/report.yml](phishingbox/report.yml) | Measures a phishing campaign's success: reports how many targets opened the email and clicked the link, broken down by type and per target. |

## Usage

```bash
satori run satori://email/all.yml -d DOMAIN="satori.ci" --report --output
satori run satori://email/github.yml -d DOMAIN="satori-ci.com" --report --output
satori run satori://email/spider.yml -d DOMAIN="satori.ci" --report --output
satori run satori://email/theharvester.yml -d DOMAIN="umd.edu" --report --output
satori run satori://email/gauplus-nuclei.yml -d DOMAIN="satori.ci" --report --output
satori run satori://email/gitsome.yml -d USER=octocat --report --output
satori run satori://email/gitxray-repo.yml -d REPO="satorici/playbooks" --report --output
satori run satori://email/gitxray-user.yml -d REPO=satorici/playbooks -d USER=satoridev01 --report --output
satori run satori://email/auth/gitxray-repo.yml -d REPO=satorici/playbooks -d GITHUB_PAT=TBC --report --output
satori run satori://email/auth/gitxray-user.yml -d REPO=org/repo -d USER=whatever -d GITHUB_PAT=TBC --report --output
```
