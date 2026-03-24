# Secrets Detection

Playbooks for detecting hardcoded secrets, API keys, passwords, cryptographic keys, and authentication credentials in code repositories.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [all.yml](all.yml) | Multi-Tool Suite | Runs Semgrep, Trufflehog, detect-secrets, and Gitleaks together to maximize secret detection coverage |
| [detect-secrets.yml](detect-secrets.yml) | detect-secrets | Identifies and prevents accidental exposure of secrets in code repositories using pattern matching and heuristics |
| [gitleaks.yml](gitleaks.yml) | Gitleaks | Fast, light-weight secret scanner for repos, directories, and files that detects API keys, passwords, tokens, and private keys |
| [semgrep.yml](semgrep.yml) | Semgrep | Static code analysis tool that scans for secrets across multiple programming languages using configurable rules |
| [trufflehog.yml](trufflehog.yml) | Trufflehog | Scans repositories, files, and logs for hardcoded secrets using pattern matching and entropy analysis |

## Usage

```bash
satori run satori://secrets/all.yml --repo BonJarber/SecretsTest --report --output
```

```bash
satori run ./ --playbook satori://secrets/gitleaks.yml --report --output
```

```bash
satori run ./ --playbook satori://secrets/semgrep.yml --report --output
```
