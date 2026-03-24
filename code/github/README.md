# GitHub

Security analysis playbooks for GitHub Actions workflows, repository trustworthiness, and GitHub-related OSINT.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [gato-x.yml](gato-x.yml) | Gato-X | Scanning and attack tool for GitHub Actions pipelines that identifies Pwn Requests, Actions Injection, TOCTOU vulnerabilities, and self-hosted runner takeover |
| [ghwfauditor.yml](ghwfauditor.yml) | ghwfauditor | Identifies vulnerabilities in GitHub Workflows by scanning for anti-patterns such as unsafe user input ingestion |
| [gitverify.yml](gitverify.yml) | GitVerify | Analyzes GitHub repositories to assess trustworthiness by evaluating metadata, contributors, issues, and pull requests |
| [gitxray.yml](gitxray.yml) | Gitxray | Multifaceted security tool for GitHub repository OSINT, forensics, and security analysis |
| [octoscan.yml](octoscan.yml) | Octoscan | Reconnaissance tool that automates scanning GitHub organizations and repositories for security issues in workflows |
| [semgrep.yml](semgrep.yml) | Semgrep | Static code analysis focused on GitHub Actions workflow security patterns |
| [sisakulint.yml](sisakulint.yml) | sisakulint | CI-friendly static linter with autofix and SAST for GitHub Actions |

## Usage

```bash
satori run ./ --playbook satori://code/github/semgrep.yml --report --output
satori run satori://code/github/gato-x.yml -d GITHUB_PAT=TBC -d REPO=org/repo --report --output
satori run satori://code/github/gitverify.yml -d REPO="https://github.com/repo" --report --output
```
