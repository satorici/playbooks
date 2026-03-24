# Compliance Playbooks

Playbooks for running compliance assessments against web applications and endpoints, covering industry standards such as OWASP Top 10, PCI-DSS, and SOC2.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [owasp-top10.yml](owasp-top10.yml) | Nuclei | Runs a vulnerability scan using Nuclei with OWASP Top 10 templates to detect common web application security issues including injection, broken authentication, sensitive data exposure, XXE, broken access control, security misconfiguration, XSS, insecure deserialization, vulnerable components, and insufficient logging. |
| [pci-dss.yml](pci-dss.yml) | OpenSSL / Nuclei / testssl.sh | Runs a PCI-DSS compliance assessment against a web endpoint checking for TLS configuration, security headers, and common vulnerabilities required by PCI-DSS. |
| [soc2.yml](soc2.yml) | OpenSSL / curl / nmap / dnsutils | Performs basic SOC2-relevant security checks on a web endpoint including TLS configuration, security headers, open ports, and DNS configuration. Covers Trust Services Criteria for security, availability, and confidentiality. |

## Usage

```bash
satori run satori://compliance/owasp-top10.yml -d URL="http://testphp.vulnweb.com/" --report --output
```

```bash
satori run satori://compliance/pci-dss.yml -d HOST="satori.ci" --report --output
```

```bash
satori run satori://compliance/soc2.yml -d HOST="satori.ci" --report --output
```
