# OSINT

Playbooks for OSINT (Open-Source Intelligence) reconnaissance — passively profiling an organization's exposure, breach history, threat-intel mentions, lookalike/impersonation domains, and corporate footprint from public sources.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [blocklist-check.yml](blocklist-check.yml) | URLhaus / OpenPhish / Phishunt / PhishStats | Alerts if a domain or its subdomains appear on public phishing/malware blocklists, signaling compromise or reputation damage |
| [breach-news.yml](breach-news.yml) | Google News + OpenRouter LLM | Searches news for compromise-related headlines and uses an LLM to judge whether the company itself was credibly breached |
| [bug-bounty.yml](bug-bounty.yml) | HackerOne / Bugcrowd / Intigriti / security.txt | Checks whether a company runs a public bug bounty or vulnerability disclosure program |
| [cert-org-search.yml](cert-org-search.yml) | crt.sh | Searches Certificate Transparency logs by Organization name to discover all domains with certs issued to a company |
| [crt.yml](crt.yml) | crt.sh | Monitors Certificate Transparency logs for newly issued lookalike certificates impersonating a brand |
| [crunchbase.yml](crunchbase.yml) | Crunchbase (CapSolver + proxy) | Extracts company profile, funding rounds, key people, and products from Crunchbase |
| [domain-to-github.yml](domain-to-github.yml) | GitHub API | Finds the most likely main GitHub org/account associated with a domain |
| [google-news.yml](google-news.yml) | Google News RSS | Lists recent news mentions of a company in the last 30 days (titles, sources, dates) |
| [haveibeenpwned.yml](haveibeenpwned.yml) | Have I Been Pwned | Checks whether the target domain or company appears in known data breaches |
| [job-board-recon.yml](job-board-recon.yml) | Adzuna Jobs API | Identifies security team gaps by searching for open security-related hiring positions |
| [linkedin-company.yml](linkedin-company.yml) | Proxycurl + Adzuna | Enriches company data (profile, specialties, funding, open security roles) from LinkedIn data and job boards |
| [otx.yml](otx.yml) | AlienVault OTX | Checks whether a domain is named in any OTX threat-intelligence pulse (IOC sets, malware campaigns) |
| [ransomware-check.yml](ransomware-check.yml) | ransomware.live | Checks whether a company or domain has been published as a ransomware victim across ~100 leak sites |
| [rbl-check.yml](rbl-check.yml) | Spamhaus / Barracuda / SORBS / SpamCop / Feodo | Resolves the org's own IPs and checks them against spam/policy blocklists and botnet C2 trackers |
| [sec-subsidiaries.yml](sec-subsidiaries.yml) | SEC EDGAR | Discovers legally disclosed subsidiaries and acquisitions via Exhibit 21 and 8-K filings (US public companies) |
| [thecompaniesapi.yml](thecompaniesapi.yml) | TheCompaniesAPI | Queries company information by hostname/domain |
| [typosquat.yml](typosquat.yml) | dnstwist | Detects registered lookalike/impersonation domains (typosquats, homoglyphs, TLD swaps) with MX and age risk scoring |
| [wayback-check.yml](wayback-check.yml) | Wayback Machine (archive.org) | Checks a domain's web archive history to gauge whether a company is active or defunct |

## Usage

```bash
satori run satori://osint/typosquat.yml -d DOMAIN="paypal.com" --report --output
```

```bash
satori run satori://osint/ransomware-check.yml -d DOMAIN="colonialkc.org" -d COMPANY="Colonial" --report --output
```
