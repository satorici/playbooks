# Compliance Playbooks

Playbooks for running compliance assessments against web applications and endpoints, covering industry standards such as OWASP Top 10, PCI-DSS, and SOC2.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [companies-house.yml](companies-house.yml) | Companies House: UK corporate structure mapping | Queries the UK Companies House API to map corporate structure, directors, filing history, subsidiaries, charges, and insolvency. Requires COMPANIES_HOUSE_API_KEY. |
| [crest-membership.yml](crest-membership.yml) | CREST: Membership verification | Checks if a company is a CREST-accredited member by querying the CREST Marketplace supplier directory, returning accreditation types, specialisms, and years of membership. |
| [cyber-essentials.yml](cyber-essentials.yml) | Cyber Essentials: UK certification check | Checks if a company holds UK Cyber Essentials or Cyber Essentials Plus certification by searching the IASME certificate database. |
| [gdpr-fines.yml](gdpr-fines.yml) | GDPR Fines: Enforcement action check | Checks for past GDPR enforcement actions against a company using the GDPR Enforcement Tracker dataset. |
| [ico-registration.yml](ico-registration.yml) | ICO Registration: UK data controller check | Checks UK Information Commissioner's Office (ICO) data controller registration status by searching the ICO register. |
| [owasp-top10.yml](owasp-top10.yml) | Nuclei | Runs a vulnerability scan using Nuclei with OWASP Top 10 templates to detect common web application security issues including injection, broken authentication, sensitive data exposure, XXE, broken access control, security misconfiguration, XSS, insecure deserialization, vulnerable components, and insufficient logging. |
| [pci-dss.yml](pci-dss.yml) | OpenSSL / Nuclei / testssl.sh | Runs a PCI-DSS compliance assessment against a web endpoint checking for TLS configuration, security headers, and common vulnerabilities required by PCI-DSS. |
| [sec-filings.yml](sec-filings.yml) | SEC Filings: Cyber incident and risk disclosures | Searches SEC EDGAR for cybersecurity incident disclosures (8-K Item 1.05) and risk management descriptions (10-K Item 1C) for US public companies. |
| [soc2.yml](soc2.yml) | OpenSSL / curl / nmap / dnsutils | Performs basic SOC2-relevant security checks on a web endpoint including TLS configuration, security headers, open ports, and DNS configuration. Covers Trust Services Criteria for security, availability, and confidentiality. |
| [stock-check.yml](stock-check.yml) | Stock Market: Public listing and trading status check | Checks if a company is publicly traded by searching Yahoo Finance; returns exchange, ticker, sector, and trading status. |

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
