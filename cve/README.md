# CVE Detection

Playbooks for detecting and validating specific Common Vulnerabilities and Exposures (CVEs) against target hosts, plus utilities for CVE lookup by identifier.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [CVE-2025-10035.yml](CVE-2025-10035.yml) | Nuclei | Detects vulnerable GoAnywhere MFT instances by extracting version numbers from the login page |
| [CVE-2025-20352.yml](CVE-2025-20352.yml) | onesixtyone / custom parser | SNMP vulnerability in Cisco IOS / IOS XE that could allow DoS or RCE (CVSS 7.7) |
| [CVE-2025-26339.yml](CVE-2025-26339.yml) | Nuclei | SolarWinds Web Help Desk unauthenticated deserialization RCE (patch bypass of CVE-2024-28988) |
| [CVE-2025-61882.yml](CVE-2025-61882.yml) | Nuclei | Oracle E-Business Suite unauthenticated RCE (CVSS 9.8) |
| [CVE-2025-61884.yml](CVE-2025-61884.yml) | Nuclei | Oracle E-Business Suite Configurator Runtime UI data exposure, versions 12.2.3-12.2.14 (CVSS 7.5) |
| [CVE-2025-7775.yml](CVE-2025-7775.yml) | Custom Python PoC | Citrix NetScaler ADC/Gateway API endpoint RCE — educational PoC for training and detection validation (CVSS 9.8) |
| [search.yml](search.yml) | ThreatTracer | Identifies CVE details by querying vulnerability databases with CVE identifiers |

## Usage

Scan a host for a specific CVE:

```bash
satori run satori://cve/CVE-2025-10035.yml -d HOST=127.0.0.1 --report --output
```

Look up CVE details from a file of identifiers:

```bash
satori run satori://cve/search.yml -df CVE=cves.txt --report --output
```
