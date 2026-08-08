# Test

Utility playbooks for testing Satori functionality.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [severity.yml](severity.yml) | Severity Test | Validates severity level assertions from Blocker (0) to Informational (5) |
| [severity-dynamic.yml](severity-dynamic.yml) | Dynamic Severity | Validates that `setSeverity: <path>.stdout` is resolved at report time from the referenced command's stdout |

## Usage

```bash
satori local satori://test/severity.yml -d BLOCKER=True -d CRITICAL=True -d HIGH=True -d MEDIUM=True -d LOW=True -d INFO=True --report --output
```
