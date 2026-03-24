# TypeScript

Type checking and linting playbooks for TypeScript projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [lint/tsc.yml](lint/tsc.yml) | TypeScript Compiler (tsc) | Performs static type checking on TypeScript and JavaScript files to catch type errors at build time |

## Usage

```bash
satori run ./ --playbook satori://code/typescript/lint/tsc.yml --report --output
```
