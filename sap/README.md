# SAP

Vulnerability scanning playbooks for SAP systems.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [Onapsis_CVE-2025-31324.yml](Onapsis_CVE-2025-31324.yml) | Onapsis CVE-2025-31324 Scanner | Checks for CVE-2025-31324 (CVSS 10 Critical) in SAP NetWeaver, detecting the vulnerability and known webshells |

## Usage

```bash
satori run satori://sap/Onapsis_CVE-2025-31324.yml -d IP=127.0.0.1 -d PORT=50000 --report --output
```
