# Go

Security analysis playbooks for Go source code.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [gosec.yml](gosec.yml) | Gosec | Inspects Go source code for security problems by scanning the Go AST, detecting hardcoded credentials, SQL injection, command injection, and more |

## Usage

```bash
satori run satori://code/go/gosec.yml --repo securego/gosec --report --output
```
