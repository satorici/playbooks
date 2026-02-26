# Satori CI Playbook Repository

200+ ready-to-use security testing playbooks. Import any playbook with one line:

```yaml
import:
  - satori://code/semgrep.yml
```

Or run directly from the CLI:

```bash
satori run satori://scan/nmap.yml -d HOST="target.com" --report --output
```

Browse the full catalog at [satori.ci/playbooks](https://satori.ci/playbooks).

---

## Directory Structure

```
playbooks/
|-- api/              API testing
|-- cloud/            AWS and multi-cloud security
|-- code/             Static analysis and linting
|   |-- abap/
|   |-- css/lint/
|   |-- github/       GitHub Actions security
|   |-- go/
|   |-- java/
|   |-- javascript/lint/
|   |-- mobile/
|   |-- python/lint/ test/
|   |-- ruby/
|   |-- rust/
|   |-- swift/
|   `-- typescript/lint/
|-- compliance/       OWASP, PCI-DSS, SOC2
|-- container/        Container and IaC scanning
|   `-- iac/          Terraform, Kubernetes
|-- crack/            Password cracking
|-- cve/              Specific CVE tests
|-- dns/              DNS enumeration and recon
|   `-- passive/      Passive subdomain discovery
|-- dos/              Load and DoS testing
|-- email/            Email harvesting and OSINT
|   `-- auth/         Authenticated variants
|-- llm/              LLM querying and testing
|   `-- tools/        LLM-powered repo analysis
|-- malware/          Malware detection
|-- monitor/          Uptime, SSL, DNS monitoring
|-- ms/               Microsoft-specific CVEs
|-- sap/              SAP security
|-- scan/             Port scanning and network recon
|-- secrets/          Secret detection
`-- web/              Web application testing
    |-- enum/         Directory and file fuzzing
    |-- passive/      Passive URL discovery
    |-- tls/          TLS/SSL testing
    `-- tools/        URL utilities and screenshots
```

---

## Playbook Catalog

### Code Analysis (72 playbooks)

Static analysis, linting, and dependency auditing across multiple languages.

| Playbook | Tool |
|----------|------|
| `code/semgrep.yml` | Semgrep — multi-language SAST |
| `code/bearer.yml` | Bearer — static source code analysis |
| `code/codeql.yml` | CodeQL — JavaScript, Python, Ruby |
| `code/joern.yml` | Joern — code analysis platform |
| `code/hounddog.yml` | Hounddog — detect sensitive data exposure |
| `code/cloc.yml` | CLOC — count lines of code |
| `code/trivy.yml` | Trivy — vulnerability scanner for code |
| `code/yamllint.yml` | YAML Lint |

**Python**

| Playbook | Tool |
|----------|------|
| `code/python/bandit.yml` | Bandit — find security issues in Python |
| `code/python/audit.yml` | Pip Audit — known vulnerabilities in dependencies |
| `code/python/safety.yml` | Safety — check dependencies for vulnerabilities |
| `code/python/bloky.yml` | Bloky |
| `code/python/pyspector.yml` | PySpector |
| `code/python/pysource-codegen.yml` | pysource-codegen — generate random Python code |
| `code/python/test/pytest.yml` | pytest — enhanced unit testing |
| `code/python/test/unittest.yml` | unittest |
| `code/python/lint/ruff.yml` | Ruff — fast Python linter |
| `code/python/lint/pylint.yml` | Pylint — Python linter |
| `code/python/lint/flake8.yml` | Flake8 — style and quality checker |
| `code/python/lint/mypy.yml` | Mypy — type checking |
| `code/python/lint/pyright.yml` | Pyright — fast static type checker |
| `code/python/lint/basedmypy.yml` | BasedMypy — enhanced type checker |
| `code/python/lint/basedpyright.yml` | BasedPyright — enhanced type checker |
| `code/python/lint/pyrefly.yml` | Pyrefly — static analyzer |
| `code/python/lint/ty.yml` | Ty — type checker |
| `code/python/lint/black.yml` | Black — code formatter |
| `code/python/lint/vulture.yml` | Vulture — dead code detection |
| `code/python/lint/radon.yml` | Radon — code metrics |
| `code/python/lint/autopep8.yml` | Autopep8 — PEP 8 formatter |
| `code/python/lint/isort.yml` | Isort — import sorting |
| `code/python/lint/pycodestyle.yml` | Pycodestyle — PEP 8 style checker |
| `code/python/lint/pydocstyle.yml` | Pydocstyle — docstring checker |
| `code/python/lint/pyflakes.yml` | Pyflakes — fast linter |
| `code/python/lint/pylama.yml` | Pylama — code audit wrapper |
| `code/python/lint/prospector.yml` | Prospector — meta-linter |
| `code/python/lint/pytype.yml` | Pytype — static type checker |

**JavaScript / TypeScript**

| Playbook | Tool |
|----------|------|
| `code/javascript/npmaudit.yml` | NPM Audit — dependency vulnerabilities |
| `code/javascript/retirejs.yml` | Retire.js — detect vulnerable JS libraries |
| `code/javascript/semgrep.yml` | Semgrep — JavaScript analysis |
| `code/javascript/dependencycheck.yml` | OWASP DependencyCheck — dependency vulnerabilities |
| `code/javascript/lint/eslint.yml` | ESLint — code analysis |
| `code/javascript/lint/biome.yml` | Biome — formatter and linter |
| `code/javascript/lint/prettier.yml` | Prettier — code formatter |
| `code/javascript/lint/standard.yml` | StandardJS — style guide and linter |
| `code/javascript/lint/jshint.yml` | JSHint — static analysis |
| `code/javascript/lint/jscpd.yml` | JSCPD — copy/paste detector |
| `code/javascript/lint/jsdoc.yml` | JSDoc — documentation generator |
| `code/typescript/lint/tsc.yml` | TypeScript Compiler — type checking |

**Go**

| Playbook | Tool |
|----------|------|
| `code/go/gosec.yml` | Gosec — Go security checker |

**Java**

| Playbook | Tool |
|----------|------|
| `code/java/spotbugs.yml` | SpotBugs — find bugs in Java code |

**Ruby**

| Playbook | Tool |
|----------|------|
| `code/brakeman.yml` | Brakeman — SAST for Ruby on Rails |
| `code/rubocop.yml` | RuboCop — static analyzer and formatter |

**Rust**

| Playbook | Tool |
|----------|------|
| `code/rust/audit.yml` | Rust Audit — crate vulnerability audit |
| `code/rust/geiger.yml` | Rust Geiger — crate vulnerability detection |

**Swift**

| Playbook | Tool |
|----------|------|
| `code/swift/swiftlint.yml` | SwiftLint — style and conventions |
| `code/swift/swiftasgen.yml` | SwiftAstGen |

**C/C++**

| Playbook | Tool |
|----------|------|
| `code/cppcheck.yml` | Cppcheck — static analysis |

**CSS**

| Playbook | Tool |
|----------|------|
| `code/css/lint/stylelint.yml` | Stylelint — CSS and SCSS linter |

**COBOL**

| Playbook | Tool |
|----------|------|
| `code/cobol.yml` | COBOL minimal SAST |

**ABAP**

| Playbook | Tool |
|----------|------|
| `code/abap/abap-code-scanner.yml` | RedRays — ABAP security scanner |

**Mobile**

| Playbook | Tool |
|----------|------|
| `code/mobile/apkleaks.yml` | APKLeaks — scan APKs for URIs and secrets |
| `code/mobile/mobsfscan.yml` | MobSFScan — mobile code SAST |

**ERB**

| Playbook | Tool |
|----------|------|
| `code/ruby/erb-to-epp.yml` | ERB to EPP converter |

**GitHub Actions Security**

| Playbook | Tool |
|----------|------|
| `code/github/octoscan.yml` | Octoscan — GitHub Actions workflow scanner |
| `code/github/sisakulint.yml` | sisakulint — SAST for GitHub Actions |
| `code/github/sisakulint2.yml` | sisakulint — SAST for GitHub Actions |
| `code/github/semgrep.yml` | Semgrep — GitHub Workflows analysis |
| `code/github/gato-x.yml` | Gato-X — GitHub Attack Toolkit |
| `code/github/ghwfauditor.yml` | ghwfauditor — GitHub Workflow vulnerability detection |
| `code/github/gitverify.yml` | Gitverify — repository trustworthiness |
| `code/github/gitxray.yml` | Gitxray — GitHub repository OSSINT |

### Web Security (34 playbooks)

Dynamic testing, crawling, fuzzing, and reconnaissance for web applications.

| Playbook | Tool |
|----------|------|
| `web/nuclei.yml` | Nuclei — vulnerability scanner |
| `web/sqlmap.yml` | SQLMap — SQL injection detection |
| `web/nikto.yml` | Nikto — web server security testing |
| `web/dalfox.yml` | Dalfox — XSS scanner |
| `web/wapiti.yml` | Wapiti — web vulnerability scanner |
| `web/lotus.yml` | Lotus — web vulnerability scanner |
| `web/httpx.yml` | httpx — web probing |
| `web/katana.yml` | Katana — web crawler |
| `web/arjun.yml` | Arjun — HTTP parameter discovery |
| `web/parth.yml` | Parth — identify potential vulnerabilities |
| `web/ppmap.yml` | Ppmap — XSS via prototype pollution |
| `web/cmseek.yml` | CMSeek — CMS detection |
| `web/corstest.yml` | CORSTest — CORS misconfiguration scanner |
| `web/corsy.yml` | Corsy — CORS misconfiguration scanner |
| `web/cloudscraper.yml` | CloudScraper — cloud resource enumeration |
| `web/wappalyzer.yml` | Wappalyzer — technology identification |
| `web/webanalyze.yml` | WebAnalyze — technology identification (Go) |
| `web/wafw00f.yml` | WAFW00F — WAF fingerprinting |
| `web/twa.yml` | TWA — Tiny Web Auditor |
| `web/uro.yml` | uro — URL deduplication |
| `web/apifuzzer.yml` | APIFuzzer — API fuzzing |
| `web/enum/ffuf.yml` | FFuf — web fuzzer |
| `web/enum/dirb.yml` | Dirb — directory brute forcer |
| `web/tls/testssl.yml` | TestSSL — TLS/SSL security |
| `web/tls/sslscan.yml` | SSLScan — SSL/TLS security |
| `web/tls/tlsx.yml` | TLSX — TLS grabber |
| `web/passive/gauplus.yml` | Gauplus — get all URLs of a domain |
| `web/passive/waymore.yml` | Waymore — Wayback Machine URLs |
| `web/passive/waybackurls.yml` | WaybackURLs — Wayback Machine URLs |
| `web/passive/socialhunter.yml` | Socialhunter — broken social media links |
| `web/passive/urlhunter.yml` | Urlhunter — URLs from shortener services |
| `web/tools/urldedupe.yml` | Urldedupe — deduplicate URLs |
| `web/tools/webscreenshot.yml` | Webscreenshot — screenshot websites |
| `web/zgrab2.yml` | ZGrab2 — network scanner |

### DNS Enumeration (17 playbooks)

Subdomain discovery, DNS records, and domain reconnaissance.

| Playbook | Tool |
|----------|------|
| `dns/dnsx.yml` | dnsX — query all DNS records |
| `dns/dnsrecon.yml` | DNSRecon — DNS enumeration |
| `dns/dnscan.yml` | dnscan — zone transfer and brute force |
| `dns/massdns.yml` | MassDNS — high-performance DNS resolver |
| `dns/passive/subfinder.yml` | Subfinder — passive subdomain discovery |
| `dns/passive/sublist3r.yml` | Sublist3r — subdomain enumeration |
| `dns/shuffledns.yml` | shuffleDNS — active subdomain brute force |
| `dns/puredns.yml` | Puredns — domain resolver and brute force |
| `dns/gobuster-dns.yml` | Gobuster — DNS subdomain brute force |
| `dns/gotator.yml` | Gotator — DNS wordlist generation |
| `dns/goaltdns.yml` | GoAltdns — subdomain generation |
| `dns/assetfinder.yml` | AssetFinder — find related domains |
| `dns/knockpy.yml` | Knockpy — subdomain enumeration |
| `dns/cdncheck.yml` | cdncheck — identify CDN/Cloud/WAF |
| `dns/hakrevdns.yml` | hakrevdns — reverse DNS lookup |
| `dns/subzy.yml` | Subzy — subdomain takeover detection |
| `dns/tko-subs.yml` | tko-subs — subdomain takeover detection |

### Network Scanning (17 playbooks)

Port scanning, banner grabbing, and network reconnaissance.

| Playbook | Tool |
|----------|------|
| `scan/nmap.yml` | Nmap — full network scan |
| `scan/naabu.yml` | Naabu — fast port scanner |
| `scan/masscan.yml` | Masscan — high-speed port scanner |
| `scan/rustscan.yml` | Rustscan — fast port scanner |
| `scan/smap.yml` | Smap — port scanner via Shodan API |
| `scan/zmap.yml` | Zmap — single packet scanner |
| `scan/zgrab2.yml` | ZGrab2 — banner grabbing |
| `scan/sshamble.yml` | SSHamble — SSH security testing |
| `scan/iperf3.yml` | IPerf3 — network performance |
| `scan/banner-scanner.yml` | Banner scanner |
| `scan/http.yml` | HTTP port scan |
| `scan/https.yml` | HTTPS port scan |
| `scan/host_port.yml` | Host port scan |
| `scan/zmap-scanner.yml` | ZMap scanner |
| `scan/zmap-zgrab2.yml` | ZMap + ZGrab2 |
| `scan/zmap-zgrab2-https.yml` | ZMap + ZGrab2 HTTPS |
| `scan.yml` | Port scan on a range |

### Secrets Detection (5 playbooks)

Find hardcoded secrets, API keys, and credentials in code.

| Playbook | Tool |
|----------|------|
| `secrets/all.yml` | Run all secret scanners |
| `secrets/gitleaks.yml` | Gitleaks — secret scanner |
| `secrets/trufflehog.yml` | Trufflehog — find hardcoded secrets |
| `secrets/semgrep.yml` | Semgrep — find secrets |
| `secrets/detect-secrets.yml` | detect-secrets — secret detection |

### Container & IaC (8 playbooks)

Container image scanning and Infrastructure as Code security.

| Playbook | Tool |
|----------|------|
| `container/grype.yml` | Grype — container vulnerability scanner |
| `container/trivy.yml` | Trivy — container vulnerability scanner |
| `container/hadolint.yml` | Hadolint — Dockerfile linter |
| `container/iac/checkov.yml` | Checkov — IaC static analysis |
| `container/iac/kics.yml` | KICS — IaC security |
| `container/iac/kubescape.yml` | Kubescape — Kubernetes security |
| `container/iac/terrascan.yml` | Terrascan — IaC compliance |
| `container/iac/tfsec.yml` | tfsec — Terraform security |

### Compliance (3 playbooks)

Automated compliance checks against security frameworks.

| Playbook | Tool |
|----------|------|
| `compliance/owasp-top10.yml` | OWASP Top 10 assessment |
| `compliance/pci-dss.yml` | PCI-DSS compliance check |
| `compliance/soc2.yml` | SOC2 security controls |

### Cloud Security (2 playbooks)

| Playbook | Tool |
|----------|------|
| `cloud/prowler.yml` | Prowler — AWS security assessment |
| `cloud/scoutsuite.yml` | ScoutSuite — multi-cloud auditing |

### Monitoring (4 playbooks)

Continuous monitoring with assertions on real output.

| Playbook | Tool |
|----------|------|
| `monitor/ping.yml` | Ping — host reachability |
| `monitor/host.yml` | Host — DNS resolution check |
| `monitor/ssl-expiry.yml` | SSL certificate expiration |
| `monitor/dns-changes.yml` | DNS record change detection |

### Email & OSINT (7 playbooks)

| Playbook | Tool |
|----------|------|
| `email/theharvester.yml` | theHarvester — emails, subdomains, names |
| `email/gauplus-nuclei.yml` | Gauplus + Nuclei — email discovery |
| `email/gitsome.yml` | gitSome — GitHub account emails |
| `email/gitxray-repo.yml` | Gitxray — repository emails |
| `email/gitxray-user.yml` | Gitxray — contributor emails |
| `email/auth/gitxray-repo.yml` | Gitxray — authenticated repo emails |
| `email/auth/gitxray-user.yml` | Gitxray — authenticated user emails |

### CVE Testing (8 playbooks)

Specific vulnerability detection and exploitation testing.

| Playbook | Tool |
|----------|------|
| `cve/search.yml` | ThreatTracer — identify CVEs by name/version |
| `cve/CVE-2025-10035.yml` | GoAnywhere MFT RCE |
| `cve/CVE-2025-20352.yml` | Cisco SNMP vulnerability |
| `cve/CVE-2025-26339.yml` | SolarWinds Web Help RCE |
| `cve/CVE-2025-61882.yml` | Oracle E-Business Suite RCE |
| `cve/CVE-2025-61884.yml` | Oracle E-Business Suite data exposure |
| `cve/CVE-2025-7775.yml` | Citrix NetScaler RCE |
| `ms/CVE-2025-53770.yml` | SharePoint unauthenticated RCE |

### LLM (8 playbooks)

Query and test large language models.

| Playbook | Tool |
|----------|------|
| `llm/all.yml` | Query all LLMs |
| `llm/openai.yml` | OpenAI |
| `llm/gemini.yml` | Gemini |
| `llm/llama3.2.yml` | Llama 3.2 |
| `llm/llama3.2-uncensored.yml` | Llama 3.2 uncensored |
| `llm/qwen.yml` | Qwen |
| `llm/tools/repo.yml` | Query a repo with Llama |
| `llm/tools/repo-by-file.yml` | Query repo files with LLM |

### Malware Detection (4 playbooks)

| Playbook | Tool |
|----------|------|
| `malware/clamav.yml` | ClamAV — antimalware scanner |
| `malware/are_ports_open.yml` | Check for open ports |
| `malware/find_ip_addresses.yml` | Find IP addresses in files |
| `malware/is_video_enabled.yml` | Check if video was enabled by malware |

### DoS Testing (2 playbooks)

| Playbook | Tool |
|----------|------|
| `dos/siege.yml` | Siege — load testing |
| `dos/slowhttptest.yml` | SlowHTTPTest — slow HTTP attacks |

### API Testing (1 playbook)

| Playbook | Tool |
|----------|------|
| `api/openapi-validator.yml` | OpenAPI specification validator |

### Password Cracking (1 playbook)

| Playbook | Tool |
|----------|------|
| `crack/john.yml` | John the Ripper |

### SAP Security (2 playbooks)

| Playbook | Tool |
|----------|------|
| `sap/Onapsis_CVE-2025-31324.yml` | SAP NetWeaver CVE scanner |
| `sap/Onapsis_CVE-2025-31324_vSatori.yml` | SAP NetWeaver CVE scanner (Satori version) |

---

## Submitting your playbooks

You can contribute your own playbooks with the Satori CI community to be used publicly.

1. Create a fork of our playbook repository by going to [https://github.com/satorici/playbooks/fork](https://github.com/satorici/playbooks/fork). Click on **Create fork**.
2. Create a new branch in your forked repository:
    1. Below your repository name there's a branch dropdown that says **main**, click it and then click on **View all branches**.
    2. Click **New branch**.
    3. Under **New branch name**, type a name for the branch and click on **Create new branch**.
    4. Select your newly created branch.
4. Create or modify your playbook, either by using the web interface or locally by pushing your changes to your repository.
5. [Click here to open a pull request](https://github.com/satorici/playbooks/compare), click on **compare across forks**. There will be four dropdowns, in the third one select your forked repository and in the last one the branch you created in the second step. Finally complete the title, the description and click on **Create pull request**

We will review your submission to include it in the public repository of playbooks. If you have any questions, drop us an email at info@satori.ci
