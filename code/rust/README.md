# Rust

Security auditing playbooks for Rust projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [audit.yml](audit.yml) | cargo-audit | Audits Rust crate dependencies for known security vulnerabilities and advisories |
| [geiger.yml](geiger.yml) | cargo-geiger | Checks Rust projects for usage of unsafe code |

## Usage

```bash
satori run ./ --playbook satori://code/rust/audit.yml --report --output
satori run ./ --playbook satori://code/rust/geiger.yml --report --output
```
