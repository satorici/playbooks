# Web Security Testing

Playbooks for web application security scanning, vulnerability detection, technology fingerprinting, and reconnaissance.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [apifuzzer.yml](apifuzzer.yml) | APIFuzzer | Fuzzing tool that tests API endpoints defined in OpenAPI/Swagger specifications to find potential vulnerabilities |
| [arjun.yml](arjun.yml) | Arjun | HTTP parameter discovery suite for finding query parameters, path parameters, and POST data fields |
| [cloudscraper.yml](cloudscraper.yml) | CloudScraper | Spiders and scrapes target websites to identify exposed cloud resources such as S3 buckets, Azure Blobs, and DigitalOcean Spaces |
| [cmseek.yml](cmseek.yml) | CMSeek | CMS detection and exploitation suite that scans WordPress, Joomla, Drupal, and over 180 other CMSs |
| [corstest.yml](corstest.yml) | CORSTest | Identifies misconfigurations in Cross-Origin Resource Sharing (CORS) implementations |
| [corsy.yml](corsy.yml) | Corsy | Scans for CORS misconfigurations including origin reflection, wildcard values, and various bypass techniques |
| [dalfox.yml](dalfox.yml) | Dalfox | XSS scanner that detects and exploits Cross-Site Scripting vulnerabilities using reflection-based detection and DOM analysis |
| [httpx.yml](httpx.yml) | httpx | Performs multiple web probes to identify and analyze web server configurations and diagnose potential vulnerabilities |
| [katana.yml](katana.yml) | Katana | Web crawling and spidering tool with headless browsing, JavaScript execution, and automatic form filling |
| [lotus.yml](lotus.yml) | Lotus | Web security scanner written in Rust that automates DAST using Lua scripts |
| [nikto.yml](nikto.yml) | Nikto | Web server scanner that detects vulnerabilities, misconfigurations, and outdated software |
| [nuclei.yml](nuclei.yml) | Nuclei | Template-based vulnerability scanner that detects CVEs, misconfigurations, and exposed sensitive data |
| [parth.yml](parth.yml) | Parth | Identifies potentially vulnerable HTTP parameter names commonly associated with file inclusion, open redirect, and SSRF |
| [ppmap.yml](ppmap.yml) | Ppmap | Scans for client-side Prototype Pollution vulnerabilities and exploits them to achieve XSS |
| [sqlmap.yml](sqlmap.yml) | sqlmap | Automates the detection and exploitation of SQL injection vulnerabilities in web applications |
| [twa.yml](twa.yml) | TWA | Tiny Web Auditor that checks web security headers and configurations for missing or misconfigured policies |
| [uro.yml](uro.yml) | uro | Extracts and deduplicates URLs by normalizing and filtering them based on predefined rules |
| [wafw00f.yml](wafw00f.yml) | WAFW00F | Identifies and fingerprints Web Application Firewall (WAF) products protecting a website |
| [wapiti.yml](wapiti.yml) | Wapiti | Web vulnerability scanner that performs black-box testing for SQL injection, XSS, file inclusion, and more |
| [wappalyzer.yml](wappalyzer.yml) | Wappalyzer | Identifies technologies on websites including CMS platforms, frameworks, analytics tools, and more |
| [webanalyze.yml](webanalyze.yml) | WebAnalyze | Go port of Wappalyzer for performant technology detection across large lists of web hosts |
| [wpscan.yml](wpscan.yml) | WPScan | WordPress security scanner for known vulnerabilities, outdated plugins/themes, and weak passwords |
| [zap.yml](zap.yml) | OWASP ZAP | Dynamic Application Security Testing scanner that finds XSS, SQL injection, CSRF, and misconfigurations |
| [zgrab2.yml](zgrab2.yml) | ZGrab2 | Fast, modular application-layer network scanner for large Internet-wide surveys with detailed handshake transcripts |

### Directory Enumeration (`enum/`)

| Playbook | Tool | Description |
|----------|------|-------------|
| [enum/dirb.yml](enum/dirb.yml) | Dirb | Web content scanner that performs dictionary-based attacks to discover hidden directories and files |
| [enum/ffuf.yml](enum/ffuf.yml) | FFuf | Fast web fuzzer for discovering hidden endpoints and parameters |

### Passive Reconnaissance (`passive/`)

| Playbook | Tool | Description |
|----------|------|-------------|
| [passive/gauplus.yml](passive/gauplus.yml) | Gauplus | Fetches known URLs from AlienVault's OTX, the Wayback Machine, and Common Crawl |
| [passive/socialhunter.yml](passive/socialhunter.yml) | Socialhunter | Crawls websites to identify broken social media links that could be hijacked |
| [passive/urlhunter.yml](passive/urlhunter.yml) | Urlhunter | Searches URLs exposed through URL shortener services like bit.ly and goo.gl |
| [passive/waybackurls.yml](passive/waybackurls.yml) | WaybackURLs | Fetches URLs that the Wayback Machine knows for a domain |
| [passive/waymore.yml](passive/waymore.yml) | Waymore | Retrieves URLs from Wayback Machine, Common Crawl, AlienVault OTX, URLScan, and VirusTotal |

### TLS/SSL Testing (`tls/`)

| Playbook | Tool | Description |
|----------|------|-------------|
| [tls/sslscan.yml](tls/sslscan.yml) | SSLScan | Identifies SSL/TLS security issues by reporting protocol versions, cipher suites, key exchanges, and certificates |
| [tls/testssl.yml](tls/testssl.yml) | TestSSL | Checks TLS/SSL ciphers and protocols for security flaws on any port |
| [tls/tlsx.yml](tls/tlsx.yml) | TLSX | TLS data collection and analysis tool with fingerprinting, cipher enumeration, and misconfiguration detection |

### Utilities (`tools/`)

| Playbook | Tool | Description |
|----------|------|-------------|
| [tools/urldedupe.yml](tools/urldedupe.yml) | Urldedupe | Deduplicates a list of similar URLs by unique URL and query string combination |
| [tools/webscreenshot.yml](tools/webscreenshot.yml) | Webscreenshot | Captures screenshots of multiple websites using headless web browsers in parallel |

## Usage

```bash
satori run satori://web/nuclei.yml -d URL="http://testphp.vulnweb.com/artists.php?artist=1" --report --output
```

```bash
satori run satori://web/sqlmap.yml -d URL="http://testphp.vulnweb.com/listproducts.php?cat=1" --report --output
```

```bash
satori run satori://web/tls/sslscan.yml -d HOST="satori.ci:443" --report --output
```
