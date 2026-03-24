# ABAP

Security analysis playbooks for ABAP (Advanced Business Application Programming) code used in SAP environments.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [abap-code-scanner.yml](abap-code-scanner.yml) | RedRays ABAP Code Analyzer | Analyzes ABAP code for potential security vulnerabilities, code quality issues, and best practice violations |

## Usage

```bash
satori run ./ --playbook satori://code/abap/abap-code-scanner.yml --report --output
```
