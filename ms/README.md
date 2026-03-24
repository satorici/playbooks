# Microsoft

Vulnerability scanning playbooks for Microsoft products.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [CVE-2025-53770.yml](CVE-2025-53770.yml) | CVE-2025-53770 Scanner | Checks for SharePoint unauthenticated RCE via deserialization of untrusted data on on-premises Microsoft SharePoint Server |

## Usage

```bash
satori local satori://ms/CVE-2025-53770.yml -d HOST=127.0.0.1 --report --output
```
