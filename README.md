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
|   |-- solidity/
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
|-- load/             HTTP load testing and benchmarking
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

### OSINT (16 playbooks)

| Playbook | Description |
|---|---|
| `satori://osint/otx.yml` — **AlienVault OTX: Threat-intel pulse exposure** | Checks whether a domain is named in any AlienVault OTX threat-intelligence pulse (tracked IOC sets, malware campaigns, incident reports). A match means the domain has bee |
| `satori://osint/blocklist-check.yml` — **Blocklist Check: Phishing & malware feed exposure** | Alerts a domain owner if their domain or subdomains appear on public phishing/malware blocklists (URLhaus, OpenPhish, Phishunt, PhishStats). A hit means the domain is lik |
| `satori://osint/bug-bounty.yml` — **Bug Bounty: Program discovery across platforms** | Checks if a company has a public bug bounty or vulnerability disclosure program on HackerOne, Bugcrowd, Intigriti, or via security.txt. Having a bug bounty program indica |
| `satori://osint/crt.yml` — **Certificate Transparency Monitor: Lookalike cert issuance** | Detects phishing infrastructure at provisioning time by watching Certificate Transparency logs (crt.sh) for newly issued certificates whose hostname contains your brand k |
| `satori://osint/cert-org-search.yml` — **Certificate Transparency: Organization domain discovery** | Searches crt.sh certificate transparency logs by Organization name (not domain) to discover all domains with SSL certificates issued to a specific company. CA-validated o |
| `satori://osint/crunchbase.yml` — **Crunchbase Company Intelligence: Profile, funding, and key people** | Solves Cloudflare challenge via CapSolver and extracts company profile, funding rounds, key people, and products from Crunchbase using a residential proxy. |
| `satori://osint/domain-to-github.yml` — **Domain to GitHub account** | Finds the most likely main GitHub organization/account for a company domain by scoring candidates on website match, login/name similarity, and popularity. |
| `satori://osint/google-news.yml` — **Google News: Recent mentions in the last 30 days** | Searches Google News for recent mentions of a company in the last 30 days via RSS. Returns titles, sources, and publication dates. Useful for identifying recent incidents |
| `satori://osint/haveibeenpwned.yml` — **HaveIBeenPwned: Breach exposure check** | Checks if employee credentials from the target domain have appeared in known data breaches using the Have I Been Pwned API. Requires HIBP_API_KEY. |
| `satori://osint/job-board-recon.yml` — **Job Board Recon: Security hiring gap analysis** | Identifies security team gaps by searching for open security-related hiring positions via the Adzuna Jobs API. Requires ADZUNA_ID and ADZUNA_KEY. |
| `satori://osint/linkedin-company.yml` — **LinkedIn Company Intelligence: Profile, hiring, and competitors** | Enriches company data via Proxycurl (nubela.co, LinkedIn data) and Adzuna Jobs API. Returns company profile, specialties, funding history, and open security roles. |
| `satori://osint/ransomware-check.yml` — **Ransomware Check: Ransomware victim history** | Checks if a company or domain has been published as a ransomware victim, using the ransomware.live v2 API which indexes victims across ~100 ransomware leak sites (live, f |
| `satori://osint/sec-subsidiaries.yml` — **SEC EDGAR: Subsidiary discovery from public filings** | Searches SEC EDGAR full-text search for Exhibit 21 (subsidiary listings) and 8-K (acquisition announcements) to discover legally disclosed subsidiaries. US public compani |
| `satori://osint/thecompaniesapi.yml` — **TheCompaniesAPI Lookup** | Query TheCompaniesAPI for company info by hostname/domain |
| `satori://osint/typosquat.yml` — **Typosquat Detection: Lookalike / impersonation domains** | Detects attacker-registered lookalike domains impersonating your brand (typosquats, homoglyphs, TLD swaps, bitsquats). Uses dnstwist to generate permutations, keeps only  |
| `satori://osint/wayback-check.yml` — **Wayback Machine: Web archive activity check** | Checks the Wayback Machine (archive.org) for a domain's archive history. Reports first snapshot, last snapshot, and recent activity. A domain with no recent snapshots or  |

### Compliance (10 playbooks)

| Playbook | Description |
|---|---|
| `satori://compliance/companies-house.yml` — **Companies House: UK corporate structure mapping** | Queries the UK Companies House API to map corporate structure, directors, filing history, subsidiaries, charges, and insolvency. Requires COMPANIES_HOUSE_API_KEY (free re |
| `satori://compliance/crest-membership.yml` — **CREST: Membership verification** | Checks if a company is a CREST-accredited member by querying the CREST Marketplace supplier directory (marketplace.crest.org). Returns membership details including accred |
| `satori://compliance/cyber-essentials.yml` — **Cyber Essentials: UK certification check** | Checks if a company holds UK Cyber Essentials or Cyber Essentials Plus certification by searching the IASME certificate database. |
| `satori://compliance/gdpr-fines.yml` — **GDPR Fines: Enforcement action check** | Checks for past GDPR enforcement actions against a company using the GDPR Enforcement Tracker dataset. |
| `satori://compliance/ico-registration.yml` — **ICO Registration: UK data controller check** | Checks UK Information Commissioner's Office (ICO) data controller registration status by searching the ICO register. |
| `satori://compliance/owasp-top10.yml` — **OWASP Top 10: Web application security assessment** | Runs a vulnerability scan using Nuclei with OWASP Top 10 templates to detect common web application security issues including injection, broken authentication, sensitive  |
| `satori://compliance/pci-dss.yml` — **PCI-DSS: Payment Card Industry compliance check** | Runs a PCI-DSS compliance assessment against a web endpoint checking for TLS configuration, security headers, and common vulnerabilities required by PCI-DSS. Combines TLS |
| `satori://compliance/sec-filings.yml` — **SEC Filings: Cyber incident and risk disclosures** | Searches SEC EDGAR for cybersecurity incident disclosures (8-K Item 1.05) and risk management descriptions (10-K Item 1C) for US public companies. |
| `satori://compliance/soc2.yml` — **SOC2: Basic security controls assessment** | Performs basic SOC2-relevant security checks on a web endpoint including TLS configuration, security headers, open ports, and DNS configuration. Covers Trust Services Cri |
| `satori://compliance/stock-check.yml` — **Stock Market: Public listing and trading status check** | Checks if a company is publicly traded by searching Yahoo Finance. Returns exchange, ticker symbol, sector, and trading status. A delisted or absent stock is a signal of  |

### DNS Enumeration (21 playbooks)

| Playbook | Description |
|---|---|
| `satori://dns/assetfinder.yml` — **AssetFinder: find domains and subdomains potentially related to a domain** | assetfinder discovers subdomains and related assets by querying public sources, certificate transparency logs, and APIs. It helps in reconnaissance and security assessmen |
| `satori://dns/cdncheck.yml` — **cdncheck: Identify the technology associated with a host (CDN, CLOUD or WAF)** | cdncheck identifies whether IP addresses belong to known Content Delivery Networks (CDNs) or cloud providers. It helps distinguish between origin servers and CDN-protecte |
| `satori://dns/caa.yml` — **DNS CAA: Certificate Authority Authorization check** | Checks if a domain has DNS CAA records configured. CAA records restrict which Certificate Authorities can issue certificates for the domain, preventing unauthorized certi |
| `satori://dns/dns-enum.yml` — **DNS Enum: Full DNS footprint mapping** | Maps the target's full DNS footprint using dig for record resolution and crt.sh certificate transparency logs for subdomain discovery. Passive reconnaissance only. |
| `satori://dns/dnscan.yml` — **dnscan: zone transfer & brute forces DNS subdomains** | The script will first try to perform a zone transfer using each of the target domain's nameservers. If this fails, it will lookup TXT and MX records for the domain, and t |
| `satori://dns/dnsrecon.yml` — **DNSRecon: general domain name enumeration** | This tool provides the ability to perform. |
| `satori://dns/dnssec.yml` — **DNSSEC: Domain Name System Security Extensions validation** | Checks if a domain has DNSSEC enabled by verifying the presence of DNSKEY and RRSIG records. DNSSEC protects against DNS spoofing and cache poisoning by cryptographically |
| `satori://dns/dnsx.yml` — **dnsX: queries all dns records of a domain** | dnsx is a DNS toolkit for performing DNS queries and collecting DNS-related information. It supports subdomain enumeration, wildcard filtering, and DNS resolution. The to |
| `satori://dns/goaltdns.yml` — **GoAltdns: subdomain generation tool** | It takes a list of subdomains, permute them using a wordlist, insert indexes, numbers, dashes and generates potential subdomains. |
| `satori://dns/gobuster-dns.yml` — **gobuster-dns: brute forces DNS subdomains** | Gobuster performs brute-force enumeration of URLs, DNS subdomains, and virtual host names. It supports wordlist-based scanning for directories and files on web servers, s |
| `satori://dns/gotator.yml` — **Gotator: generate DNS wordlists through permutations** | Gotator generates permutations, alterations, and mutations of subdomains to enhance subdomain enumeration. It helps discover additional subdomains by modifying known ones |
| `satori://dns/hakrevdns.yml` — **hakrevdns: reverse DNS lookup** | hakrevdns performs fast and large-scale reverse DNS lookups by resolving IP addresses to hostnames. It helps identify associated domains, uncover network infrastructure,  |
| `satori://dns/knockpy.yml` — **Knockpy: Enumerate subdomains through passive reconnaissance and dictionary scan** | Knockpy performs subdomain enumeration by querying DNS records, brute-forcing potential subdomains, and checking for wildcard DNS configurations. It helps identify hidden |
| `satori://dns/massdns.yml` — **MassDNS: enumerates DNS records** | MassDNS is a DNS resolver that performs bulk domain lookups, supports recursive queries, and conducts brute-force subdomain enumeration using multiple resolvers for query |
| `satori://dns/puredns.yml` — **Puredns: domain resolver and subdomain bruteforcing** | puredns performs recursive DNS resolution and wildcard filtering to validate subdomains. It filters out wildcard subdomains and poisoned entries to reduce false positives |
| `satori://dns/shuffledns.yml` — **shuffleDNS: enumerate valid subdomains using active bruteforce and resolving subdomains** | shuffledns resolves and filters subdomains by combining wordlist-based brute forcing with mass DNS resolution using multiple resolvers. It helps identify active subdomain |
| `satori://dns/passive/subfinder.yml` — **Subfinder: Discover valid subdomains using passive online sources** | subfinder discovers subdomains by querying public sources, certificate transparency logs, APIs, and brute-force techniques. It is designed for reconnaissance and security |
| `satori://dns/passive/sublist3r.yml` — **Sublist3r: enumerate subdomains using search engines** | Sublist3r automates subdomain enumeration by querying search engines, certificate transparency logs, and other sources to gather subdomains for a given domain, aiding in  |
| `satori://dns/subzy.yml` — **Subzy: subdomain takeover tool that matches response fingerprings from can-i-take-over-xyz** | subzy detects and exploits subdomain takeover vulnerabilities by identifying misconfigured DNS records pointing to external services. It automates checks for abandoned su |
| `satori://dns/tko-subs.yml` — **tko-subs: detect and takeover subdomains with dead DNS records** | tko-subs detects and exploits subdomain takeover vulnerabilities by scanning for misconfigured DNS records that point to external services no longer in use. It helps iden |
| `satori://dns/whois-check.yml` — **WHOIS: Domain registration and expiry check** | Checks domain WHOIS data including registration date, expiry date, registrar, and domain status. Expired or soon-to-expire domains are a strong signal of company distress |

### Web Security (39 playbooks)

| Playbook | Description |
|---|---|
| `satori://web/apifuzzer.yml` — **APIFuzzer** | APIFuzzer is a fuzzing tool that tests API endpoints defined in OpenAPI/Swagger specifications to find potential vulnerabilities. |
| `satori://web/arjun.yml` — **Arjun: HTTP Parameter Discovery** | Arjun is an HTTP parameter discovery suite. It's used to find query parameters, path parameters, POST data fields, and request headers in web applications through intelli |
| `satori://web/cloudscraper.yml` — **Cloud Scraper: enumerates targets in search of cloud resources (S3 Buckets, Azure Blobs, Digital Ocean Storage Space)** | CloudScraper spiders and scrapes target websites to identify exposed cloud resources, such as AWS S3 buckets, Azure Blobs, and DigitalOcean Spaces. By inputting a URL, it |
| `satori://web/cmseek.yml` — **CMSeek: CMS Detection and Exploitation suite** | Scan WordPress, Joomla, Drupal and over 180 other CMSs |
| `satori://web/corstest.yml` — **CORSTest: misconfiguration scanner** | CORStest identifies misconfigurations in Cross-Origin Resource Sharing (CORS) implementations. It tests whether arbitrary origins are accepted, credentials are allowed, a |
| `satori://web/corsy.yml` — **Corsy: Scans for misconfigurations in CORS implementations** | Corsy scans for misconfigurations in Cross-Origin Resource Sharing (CORS) settings. It detects vulnerabilities like origin reflection, wildcard values, and various bypass |
| `satori://web/dalfox.yml` — **Dalfox: XSS scanner** | Dalfox detects and exploits XSS (Cross-Site Scripting) vulnerabilities by analyzing parameters, injecting payloads, and automating security testing. It supports reflectio |
| `satori://web/enum/dirb.yml` — **Dirb: web directory brute forcer** | DIRB is a command-line web content scanner that performs dictionary-based attacks to discover hidden directories and files on web servers. It works by systematically requ |
| `satori://web/enum/ffuf.yml` — **FFuf: Web fuzzer to discover hidden files and directories** | Fast web fuzzer for discovering hidden endpoints and parameters |
| `satori://web/passive/gauplus.yml` — **Gauplus: Get all urls of a domain** | Fetch known URLs from sources like AlienVault’s Open Threat Exchange, the Wayback Machine, and Common Crawl. |
| `satori://web/hsts-preload.yml` — **HSTS Preload: Chrome preload list membership check** | Checks if a domain is registered on the HSTS Preload List, which is hardcoded into Chrome, Firefox, Safari, Edge, and other browsers. Domains on the list are always acces |
| `satori://web/httpx.yml` — **httpx: performs multiple web probes** | Identify and analyze web server configurations, verify HTTP responses, and diagnose potential vulnerabilities or misconfigurations |
| `satori://web/katana.yml` — **Katana: Crawl and spider a website** | Katana is a web crawling and spidering tool that supports headless browsing, JavaScript execution, automatic form filling, and regex-based scope control. It processes inp |
| `satori://web/lotus.yml` — **Lotus: scan web vulnerabilities** | Lotus is a web security scanner written in Rust that automates dynamic application security testing (DAST) using Lua scripts. It provides a comprehensive Lua API to strea |
| `satori://web/nikto.yml` — **Nikto: Tests web servers for security threats** | Nikto is a web server scanner that detects vulnerabilities, misconfigurations, and outdated software by testing against a database of known security issues. It performs c |
| `satori://web/nuclei.yml` — **Nuclei: Web vulnerability scanner** | A feature-rich vulnerability scanner that uses templates to detect security issues including CVEs, misconfigurations, and exposed sensitive data. |
| `satori://web/zap.yml` — **OWASP ZAP: Dynamic Application Security Testing** | OWASP ZAP (Zed Attack Proxy) is the world's most widely used DAST scanner. It automatically finds security vulnerabilities in web applications by crawling and actively te |
| `satori://web/parth.yml` — **Parth: Identify potential web vulnerabilities** | Some HTTP parameter names are more commonly associated with one functionality than the others. For example, the parameter ?url= usually contains URLs as the value and hen |
| `satori://web/ppmap.yml` — **Ppmap: perform XSS via Prototype Pollution** | ppmap is a tool that scans for client-side Prototype Pollution vulnerabilities and exploits them to achieve cross-site scripting (XSS) by leveraging known gadgets. It ide |
| `satori://web/tls/ssllabs.yml` — **Qualys SSL Labs: SSL/TLS configuration assessment** | Assesses SSL/TLS configuration quality using the Qualys SSL Labs API. Reports grade, certificate details, protocol support, and known vulnerabilities like BEAST, POODLE,  |
| `satori://web/security-txt.yml` — **Security.txt: Security contact and disclosure policy check** | Checks if a domain publishes a security.txt file (RFC 9116) at /.well-known/security.txt. Presence indicates a mature security program with defined vulnerability disclosu |
| `satori://web/passive/socialhunter.yml` — **Socialhunter: crawls the given URL and finds broken social media links that can be hijacked** | socialhunter crawls a given website to identify broken social media links that could be hijacked, potentially allowing attackers to conduct phishing attacks or damage a c |
| `satori://web/sqlmap.yml` — **sqlmap: automates the process of detecting and exploiting SQL injection flaws** | sqlmap automates the detection and exploitation of SQL injection vulnerabilities in web applications. It identifies injection points, extracts database information, and s |
| `satori://web/tls/sslscan.yml` — **SSLScan: Identify security issues related to SSL/TLS/HTTPS services** | It reports the protocol versions, cipher suites, key exchanges, signature algorithms, and certificates in use. |
| `satori://web/tls/testssl.yml` — **TestSSL: Checks TLS/SSL ciphers and protocols for security flaws** | Check a server's service on any port for the support of TLS/SSL ciphers, protocols as well as some cryptographic flaws. |
| `satori://web/tls/tlsx.yml` — **TLSX: TLS grabber** | TLSX is a command-line tool designed for comprehensive TLS data collection and analysis. It supports multiple connection modes, customizable cipher suites, and SNI config |
| `satori://web/twa.yml` — **TWA: Tiny Web Auditor** | twa audits web security headers and configurations. It checks for issues such as HTTP redirects to HTTP, missing security headers, and the absence of Content-Security-Pol |
| `satori://web/tools/urldedupe.yml` — **Urldedupe: deduplicates a list of similar URLs** | Pass in a list of URLs with newlines, and get back a list of deduplicated (unique) URL and query string combination |
| `satori://web/passive/urlhunter.yml` — **Urlhunter: search URLs that are exposed via shortener services (bit.ly, goo.gl)** | Tool for searching URLs exposed through URL shortener services by analyzing collections of previously brute-forced and published shortened URLs. It allows users to filter |
| `satori://web/uro.yml` — **uro: remove uninteresting/duplicate URLs** | uro extracts and deduplicates URLs from input data by normalizing and filtering them based on predefined rules. It removes duplicates, standardizes formats, and ensures c |
| `satori://web/wafw00f.yml` — **WAFW00F: identify and fingerprint Web Application Firewall (WAF) products protecting a website.** | wafw00f detects and identifies web application firewalls (WAFs) by sending crafted HTTP requests and analyzing responses. It determines the WAF vendor and provides insigh |
| `satori://web/wapiti.yml` — **Wapiti: Web vulnerability scanner** | Wapiti is a web vulnerability scanner that performs black-box testing to identify security issues like SQL injection, XSS, file inclusion, command execution, and more by  |
| `satori://web/wappalyzer.yml` — **Wappalyzer: identifies technologies on websites, including content management systems, eCommerce platforms, JavaScript frameworks, analytics tools and more** | Wappalyzer identifies technologies used by websites by analyzing their responses, headers, and scripts. It detects frameworks, CMS platforms, programming languages, analy |
| `satori://web/passive/waybackurls.yml` — **WaybackURLs: Fetch the URLs that the Wayback Machine knows for a domain** | waybackurls extracts URLs from the Wayback Machine for a given domain, helping identify historical endpoints, parameters, and potential attack surfaces for security asses |
| `satori://web/passive/waymore.yml` — **Waymore: find way more URLs from the Wayback Machine** | waymore retrieves URLs from multiple sources, including the Wayback Machine, Common Crawl, AlienVault OTX, URLScan, and VirusTotal. It can download archived responses fro |
| `satori://web/webanalyze.yml` — **WebAnalyze: a port of Wappalyzer in Go to be performant and allows to test huge lists of web hosts** | Webanalyze detects and identifies technologies used by websites by analyzing their responses and matching them against fingerprints from the Wappalyzer database. It suppo |
| `satori://web/tools/webscreenshot.yml` — **Webscreenshot: screenshot a list of websites** | webscreenshot captures screenshots of multiple websites by rendering them using headless web browsers. It supports bulk URL input and can take screenshots in parallel, ma |
| `satori://web/wpscan.yml` — **WPScan: WordPress security scanner** | WPScan scans WordPress installations for known vulnerabilities, outdated plugins and themes, weak passwords, and security misconfigurations. It enumerates users, plugins, |
| `satori://web/zgrab2.yml` — **ZGrab: network scanner** | ZGrab is a fast, modular application-layer network scanner designed for completing large Internet-wide surveys. ZGrab is built to work with ZMap (ZMap identifies L4 respo |

### Email (9 playbooks)

| Playbook | Description |
|---|---|
| `satori://email/email-security.yml` — **Email Security: SPF, DMARC, and DKIM assessment** | Checks email authentication and anti-spoofing configuration by querying SPF, DMARC, and DKIM DNS records. Assesses strictness levels and provides an overall email securit |
| `satori://email/gauplus-nuclei.yml` — **Gauplus+Nuclei: Get the urls of a domain and search for email addresses** | Extracts URLs from a domain using Gauplus and searches for email addresses with Nuclei. Retrieves historical and indexed URLs, then scans them for email patterns using pr |
| `satori://email/gitsome.yml` — **gitSome: gets emails associated with a Github account** | gitSome is an OSINT tool that extracts email addresses and other information from various GitHub sources. It can target user accounts, organizations, or specific domains  |
| `satori://email/gitxray-user.yml` — **Gitxray: Get Github contributors' emails** | Gitxray (short for Git X-Ray) is a multifaceted security tool designed for use on GitHub repositories. It serves various use cases, including OSINT, forensics, and securi |
| `satori://email/auth/gitxray-user.yml` — **Gitxray: Get Github contributors' emails authenticated** | Gitxray (short for Git X-Ray) is a multifaceted security tool designed for use on GitHub repositories. It serves various use cases, including OSINT, forensics, and securi |
| `satori://email/gitxray-repo.yml` — **Gitxray: Get Github repository's emails** | Gitxray (short for Git X-Ray) is a multifaceted security tool designed for use on GitHub repositories. It serves various use cases, including OSINT, forensics, and securi |
| `satori://email/auth/gitxray-repo.yml` — **Gitxray: Get Github repository's emails authenticated** | Gitxray (short for Git X-Ray) is a multifaceted security tool designed for use on GitHub repositories. It serves various use cases, including OSINT, forensics, and securi |
| `satori://email/hunter.yml` — **Hunter.io: Email discovery and pattern identification** | Discovers professional email addresses associated with a domain using Hunter.io's database. Returns email addresses, their sources, confidence scores, and the organisatio |
| `satori://email/theharvester.yml` — **theHarvester: Get e-mails, subdomains and names** | theHarvester collects OSINT (Open-Source Intelligence) data from public sources to gather emails, subdomains, IPs, and other information related to a target domain. It qu |

### Network Scanning (19 playbooks)

| Playbook | Description |
|---|---|
| `satori://scan/banner-scanner.yml` — **Banner scanner** | Grabs banners from a list of IP addresses on a specified port using concurrent connections. |
| `satori://scan/iperf3.yml` — **IPerf3: Measures performance** | IPerf3 is a network performance measurement tool that tests bandwidth, jitter, and packet loss between hosts. |
| `satori://scan/masscan.yml` — **Masscan: Scan a target host for a specific port** | This playbook uses masscan to scan a target host for a specific port and rate, both defined by the user. |
| `satori://scan/naabu.yml` — **Naabu: port scanning tool** | Naabu is a port scanning tool written in Go that allows you to enumerate valid ports for hosts in a fast and reliable manner. It is a really simple tool that does fast SY |
| `satori://scan/nmap.yml` — **Nmap: full network scan** | Nmap is short for Network Mapper. It is an open-source Linux command-line tool that is used to scan IP addresses and ports in a network and to detect installed applicatio |
| `satori://scan/http.yml` — **Port scan on a range** | Scans an IP range for open HTTP ports using ZMap and ZGrab2 with sharding support, then aggregates banner results. |
| `satori://scan/https.yml` — **Port scan on a range** | Scans an IP range for open HTTPS ports using ZMap and ZGrab2 with sharding support, then aggregates banner results. |
| `satori://scan/rustscan.yml` — **Rustscan: Network port scanner** | RustScan is a modern port scanner that rapidly scans all 65,535 ports in approximately 3 seconds. It features a scripting engine supporting languages like Python, Lua, an |
| `satori://scan/host_port.yml` — **Scan bug bounty hosts with a playbook** | Scans bug bounty target hosts from public domain lists using a specified playbook and port list in parallel. |
| `satori://scan/shodan.yml` — **Shodan: Exposed services and CVE identification** | Queries Shodan API to identify exposed services, open ports, software versions, and known CVEs on the target's infrastructure and subdomains. Requires SHODAN_API_KEY. |
| `satori://scan/smap.yml` — **Smap: port scanner built with shodan.io's free API** | smap is a network scanner that functions as a faster, more efficient alternative to Nmap by leveraging masscan for high-speed host discovery and integrating Nmap’s servic |
| `satori://scan/ssh-audit.yml` — **ssh-audit: SSH server configuration auditor** | ssh-audit analyzes SSH server configurations to identify weak algorithms, outdated protocols, and security misconfigurations. It checks key exchanges, ciphers, MACs, and  |
| `satori://scan/sshamble.yml` — **SSHamble: Unexpected Exposures in SSH** | SSHamble is an SSH security testing tool that identifies misconfigurations, weak credentials, and unexpected exposures in SSH services. |
| `satori://scan/zgrab2.yml` — **ZGrab2: grab port banners** | ZGrab2 is a modular application-layer network scanner that grabs banners and metadata from services on specified ports. |
| `satori://scan/zmap-zgrab2.yml` — **ZMap + ZGrab2** | Combines ZMap for fast port scanning with ZGrab2 for HTTP banner grabbing across IP ranges. |
| `satori://scan/zmap-zgrab2-https.yml` — **ZMap + ZGrab2** | Combines ZMap for fast port scanning with ZGrab2 for HTTPS banner grabbing across IP ranges. |
| `satori://scan/zmap-scanner.yml` — **ZMap Scanner** | Orchestrates ZMap scans across IP ranges using sharding, collects results, and uploads them to a repository. |
| `satori://scan/zmap-webbanner.yml` — **ZMap Web Banner Scanner** | Scans IP ranges using ZMap to discover hosts with open ports. |
| `satori://scan/zmap.yml` — **Zmap: fast single packet network scanner** | ZMap is a fast single-packet network scanner optimized for Internet-wide network surveys. On a computer with a gigabit connection, ZMap can scan the entire public IPv4 ad |

### CVE Testing (8 playbooks)

| Playbook | Description |
|---|---|
| `satori://cve/cisa-kev.yml` — **CISA KEV: Check CVEs against actively exploited list** | Cross-references CVE IDs against the CISA Known Exploited Vulnerabilities (KEV) catalog to identify critical-priority vulnerabilities that are actively exploited in the w |
| `satori://cve/CVE-2025-10035.yml` — **CVE-2025-10035 - GoAnywhere MFT RCE** | Detects vulnerable GoAnywhere MFT instances by extracting version numbers from the login page and matching against affected version ranges. |
| `satori://cve/CVE-2025-20352.yml` — **CVE-2025-20352 (CVSS 7.7): SNMP vulnerability in Cisco** | A vulnerability in the Simple Network Management Protocol (SNMP) subsystem of Cisco IOS Software and Cisco IOS XE Software could allow the following: An authenticated, re |
| `satori://cve/CVE-2025-26339.yml` — **CVE-2025-26339 - SolarWinds Web Help RCE** | SolarWinds Web Help Desk was found to be susceptible to an unauthenticated AjaxProxy deserialization remote code execution vulnerability that, if exploited, would allow a |
| `satori://cve/CVE-2025-61882.yml` — **CVE-2025-61882 (CVSS 9.8) - Oracle E-Business Suite RCE** | Oracle E-Business Suite remote code execution vulnerability without authentication. Detects vulnerable instances by checking for E-Business Suite Home Page text and compa |
| `satori://cve/CVE-2025-61884.yml` — **CVE-2025-61884 (CVSS 7.5) - Oracle E-Business Suite Configurator Data Exposure** | Oracle E-Business Suite Configurator Runtime UI vulnerability that allows unauthenticated attackers with network access via HTTP to access critical data. Affects Oracle C |
| `satori://cve/CVE-2025-7775.yml` — **CVE-2025-7775 (CVSS 9.8): Citrix NetScaler ADC/Gateway RCE (Educational PoC)** | Educational proof-of-concept for hypothetical unauthenticated Remote Code Execution vulnerability in Citrix NetScaler ADC/Gateway API endpoint. Tests for command injectio |
| `satori://cve/search.yml` — **ThreatTracer: identify CVE by name & version** | ThreatTracer identifies CVE details by querying vulnerability databases with CVE identifiers. |

### Microsoft (1 playbook)

| Playbook | Description |
|---|---|
| `satori://ms/CVE-2025-53770.yml` — **CVE-2025-53770 - SharePoint unauthenticated RCE** | Deserialization of untrusted data in on-premises Microsoft SharePoint Server allows an unauthorized attacker to execute code over a network. Microsoft is aware that an ex |

### Code Analysis (81 playbooks)

| Playbook | Description |
|---|---|
| `satori://code/solidity/4naly3er.yml` — **4naly3er: Solidity audit issue detector** | 4naly3er is a Solidity static analyzer built for competitive audits and bug |
| `satori://code/solidity/aderyn.yml` — **Aderyn: Rust-based Solidity static analyzer** | Aderyn is a Rust-based Solidity AST analyzer built by Cyfrin. It walks the |
| `satori://code/mobile/apkleaks.yml` — **APKLeaks: Scanning APK files for URIs, endpoints, and secrets** | APKLeaks scans Android APK files to find sensitive information like URLs, API keys, secrets, endpoints, and other potentially sensitive strings that could expose security |
| `satori://code/python/lint/autopep8.yml` — **Autopep8: Automatic PEP 8 Formatter** | Autopep8 automatically formats Python code to conform to the PEP 8 style guide. |
| `satori://code/python/bandit.yml` — **Bandit: Find common security issues in Python** | Bandit processes each file, builds an AST from it, and runs appropriate plugins against the AST nodes. Once Bandit has finished scanning all the files it generates a repo |
| `satori://code/python/lint/basedmypy.yml` — **BasedMypy: Enhanced Python Static Type Checker** | BasedMypy is an enhanced Python static type checker built on mypy with improved type system features including intersection types, better type inference, and gradual adop |
| `satori://code/python/lint/basedpyright.yml` — **BasedPyright: Enhanced Python Type Checker** | BasedPyright is a fork of Microsoft's Pyright with enhanced type checking improvements, integrated Pylance features, and better VSCode support. Provides advanced Python t |
| `satori://code/bearer.yml` — **Bearer: static source code analysis** | Bearer is a static application security testing (SAST) tool designed to scan your source code and analyze data flows to identify, filter, and prioritize security and priv |
| `satori://code/javascript/lint/biome.yml` — **Biome: Formatter and linter for JS, TS, JSX, and JSON** | Biome is a fast formatter and linter for JavaScript, TypeScript, JSX, and JSON that scores 97% compatibility with Prettier. It features fast, native performance and requi |
| `satori://code/python/lint/black.yml` — **Black: Opinionated Code Formatter** | Black is an uncompromising Python code formatter that enforces a consistent style. It reformats code automatically and minimizes diff noise by using strict formatting rul |
| `satori://code/python/bloky.yml` — **bloky** | Bloky detects blocking operations in Python async code that could cause performance issues. |
| `satori://code/brakeman.yml` — **Brakeman: Static Application Security Testing for Ruby on Rails** | Brakeman is a static analysis security vulnerability scanner for Ruby on Rails applications. It scans application code for known vulnerabilities, security issues, and con |
| `satori://code/cloc.yml` — **CLOC: Count Lines of Code** | CLOC counts blank lines, comment lines, and physical lines of source code in many programming languages. |
| `satori://code/cobol.yml` — **COBOL minimal SAST** | Lightweight COBOL scanner can provide meaningful security coverage |
| `satori://code/codeql.yml` — **CodeQL Javascript Python Ruby** | CodeQL is a semantic code analysis engine that finds security vulnerabilities in JavaScript, Python, and Ruby codebases using database queries. |
| `satori://code/cppcheck.yml` — **Cppcheck: Static analysis for C and C++** | Cppcheck is a static analysis tool for detecting bugs, undefined behavior, and potential security vulnerabilities in C and C++ code. |
| `satori://code/solidity/defi-sast.yml` — **DeFi SAST: Comprehensive smart contract security suite** | Full DeFi static analysis security testing suite combining Slither, Semgrep |
| `satori://code/ruby/erb-to-epp.yml` — **ERB to EPP** | Embedded Ruby (.erb) into Embedded Puppet (.epp) |
| `satori://code/javascript/lint/eslint.yml` — **ESLint: JavaScript and TypeScript code analysis** | ESLint statically analyzes your code to quickly find problems. It finds and fixes problems in your JavaScript code, from style issues to bugs and potential errors. |
| `satori://code/python/lint/flake8.yml` — **Flake8: check the style and quality of Python code.** | Flake8 is a wrapper around PyFlakes, pycodestyle, and Ned Batchelder's McCabe script. Flake8 runs all the tools by launching the single flake8 command. It displays the wa |
| `satori://code/github/gato-x.yml` — **Gato-X: GitHub Attack Toolkit** | Gato-X is a scanning and attack tool for GitHub Actions pipelines. You can use it to identify Pwn Requests, Actions Injection, TOCTOU Vulnerabilities, and Self-Hosted Run |
| `satori://code/github/ghwfauditor.yml` — **ghwfauditor: dynamically identify vulnerabilities in Github Workflows with enhacements over GHWF** | ghwfauditor, based on GitHub Workflow Auditor, identifies vulnerability in GitHub Workflows. It does so by scanning the workflow files for anti-patterns such as ingesting |
| `satori://code/github/gitverify.yml` — **Gitverify: provide insights into a Github repository's trustworthiness** | GitVerify analyzes GitHub repositories to assess their trustworthiness by evaluating metadata, contributors, issues, pull requests, and associated domains. It gathers dat |
| `satori://code/github/gitxray.yml` — **Gitxray: Github repository OSSINT** | Gitxray (short for Git X-Ray) is a multifaceted security tool designed for use on GitHub repositories. It serves various use cases, including OSINT, forensics, and securi |
| `satori://code/go/gosec.yml` — **Gosec: Go security checker** | Gosec inspects Go source code for security problems by scanning the Go AST. It detects hardcoded credentials, SQL injection, command injection, path traversal, weak crypt |
| `satori://code/horusec.yml` — **Horusec: multi-language SAST** | Horusec is an open-source static application security testing tool that identifies vulnerabilities in source code across 18+ languages including Python, JavaScript, Java, |
| `satori://code/hounddog.yml` — **Hounddog: detect and prevent exposure of sensitive data** | HoundDog.ai's Privacy by Design Code Scanner helps organizations proactively detect and prevent the overexposure of sensitive data in high risk mediums, which could lead  |
| `satori://code/python/lint/isort.yml` — **Isort: Import Sorting for Python** | Isort is a Python utility for sorting imports. It automatically sorts and organizes imports in your Python files, making them easier to read and maintain. |
| `satori://code/joern.yml` — **Joern** | Open-source code analysis platform for C/C++/Java/Binary/Javascript/Python/Kotlin based on code property graphs. |
| `satori://code/javascript/lint/jscpd.yml` — **JSCPD: Copy/paste detector** | JSCPD is a copy/paste detector for programming source code, supporting many languages including JavaScript, TypeScript, and more. It helps identify duplicated code that s |
| `satori://code/javascript/lint/jsdoc.yml` — **JSDoc: API documentation generator for JavaScript** | JSDoc is a markup language used to annotate JavaScript source code files and an API documentation generator for JavaScript. It allows developers to document their code us |
| `satori://code/javascript/lint/jshint.yml` — **JSHint: A Static Code Analysis Tool for JavaScript** | JSHint is a community-driven tool that detects errors and potential problems in JavaScript code. It is more flexible than JSLint and allows developers to configure many o |
| `satori://code/mobile/mobsfscan.yml` — **MobSFScan - SAST for mobile code** | MobSFScan can find insecure code patterns in Android and iOS source code. Supports Java, Kotlin, Swift, and Objective C Code. It uses MobSF static analysis rules and is p |
| `satori://code/python/lint/mypy.yml` — **Mypy: Type Checking for Python** |  Mypy is a static type checker for Python that helps enforce type annotations. It can detect type errors and inconsistencies before runtime, improving code safety and mai |
| `satori://code/solidity/mythril.yml` — **Mythril: EVM bytecode security analysis** | Mythril is a security analysis tool for EVM bytecode. It detects security |
| `satori://code/javascript/npmaudit.yml` — **NPM audit: check for vulnerabilities in dependencies** | The audit command submits a description of the dependencies configured in your project to your default registry and asks for a report of known vulnerabilities. If any vul |
| `satori://code/github/octoscan.yml` — **Octoscan: scanner for GitHub action workflows** | Octoscan is a reconnaissance tool that automates the process of scanning GitHub organizations and repositories for potential security issues in Github Workflows. |
| `satori://code/osv-scanner.yml` — **OSV-Scanner: Vulnerability scanner for project dependencies** | OSV-Scanner by Google scans project dependencies for known vulnerabilities using the OSV.dev database. It supports 11+ language ecosystems including Go, Python, JavaScrip |
| `satori://code/javascript/dependencycheck.yml` — **OWASP DependencyCheck: verifies publicly disclosed vulnerabilities in project's dependencies** | OWASP DependencyCheck is a multi-language Software Composition Analysis (SCA) tool. While it is commonly used in Java projects, it also supports scanning dependencies for |
| `satori://code/python/audit.yml` — **Pip Audit: Check for known vulnerabilities in Python dependencies** | pip-audit scans Python dependencies for security vulnerabilities using the Python Packaging Advisory Database (PyPI). It helps ensure secure package management by identif |
| `satori://code/javascript/lint/prettier.yml` — **Prettier: Opinionated Code Formatter** | Prettier is an opinionated code formatter that supports many languages and integrates with most editors. It removes all original styling and ensures that all outputted co |
| `satori://code/python/lint/prospector.yml` — **Prospector: Meta-Linter for Python** | Prospector runs a collection of Python analysis tools like pylint, mypy, and pep8. It offers an aggregated view of code quality issues in a unified report. |
| `satori://code/python/lint/pycodestyle.yml` — **Pycodestyle: PEP 8 Style Checker** | Pycodestyle checks Python code against the PEP 8 style guide. It's useful for maintaining consistent formatting and identifying common stylistic issues. |
| `satori://code/python/lint/pydocstyle.yml` — **Pydocstyle: Docstring Convention Checker** | Pydocstyle checks compliance with Python docstring conventions as specified in PEP 257. |
| `satori://code/python/lint/pyflakes.yml` — **Pyflakes: Fast Code Linter** | Pyflakes analyzes Python source files to detect errors such as unused imports and undefined variables. It focuses on correctness rather than style. |
| `satori://code/python/lint/pylama.yml` — **Pylama: Code Audit Wrapper** | Pylama is a code audit tool that aggregates results from multiple linters and static analyzers. It's ideal for batch linting and unified output during CI/CD workflows. |
| `satori://code/python/lint/pylint.yml` — **Pylint: linter for Python** | It analyses your code without actually running it. It checks for errors, enforces a coding standard, looks for code smells, and can make suggestions about how the code co |
| `satori://code/python/lint/pyrefly.yml` — **Pyrefly: Python static analyzer** | Pyrefly is a static analysis tool for Python that helps identify potential issues in code made by Facebook. |
| `satori://code/python/lint/pyright.yml` — **Pyright: Fast Static Type Checker** | Pyright is a full-featured, standards-based static type checker for Python. It is designed for high performance and can be used with large Python source bases. |
| `satori://code/python/pysource-codegen.yml` — **pysource-codegen: Generate random Python code** | Generate random python code to test linter/formatter/and other tools. pysource-codegen is able to generate random python code which can be compiled |
| `satori://code/python/pyspector.yml` — **PySpector** | PySpector is a static analysis security testing (SAST) Framework engineered for modern Python development workflows. It leverages a powerful Rust core to deliver high-spe |
| `satori://code/python/test/pytest.yml` — **pytest - enhanced unit test for Python** | Runs pytest to discover and execute unit tests in Python projects with automatic dependency installation. |
| `satori://code/python/lint/pytype.yml` — **Pytype: Static Type Checker** | Pytype is a static type checker for Python that can catch type errors in your code before you run it. |
| `satori://code/python/lint/radon.yml` — **Radon: Code Metrics for Python** | Radon provides various code metrics for Python, including cyclomatic complexity, raw metrics, and maintainability index. |
| `satori://code/abap/abap-code-scanner.yml` — **RedRays ABAP Code Analyzer: Open-Source Security Scanner for SAP ABAP** | Analyze ABAP (Advanced Business Application Programming) code for potential security vulnerabilities, code quality issues, and best practice violations |
| `satori://code/javascript/retirejs.yml` — **Retire.js: detect JS libraries with known vulnerabilities** | Scan a web app or node app for use of known vulnerable JavaScript libraries and/or Node.JS modules |
| `satori://code/rubocop.yml` — **RuboCop: Ruby static code analyzer and formatter** | RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter. It enforces many of the guidelines outlined in the community Ruby Style Guide, finds code smell |
| `satori://code/python/lint/ruff.yml` — **Ruff: Python linter** | Ruff is a fast Python linter and formatter that enforces code quality by detecting style violations, unused imports, and potential errors. It provides an alternative to t |
| `satori://code/rust/audit.yml` — **Rust_Audit: audit check performs an audit for crates with security vulnerabilities** | Checks Rust projects for security vulnerabilities and unsafe code. Uses cargo-audit to detect known security issues in dependencies. Ensures no advisories are present. |
| `satori://code/rust/geiger.yml` — **Rust_Geiger: check crates with security vulnerabilities** | Checks Rust projects for unsafe code |
| `satori://code/python/safety.yml` — **Safety: check Python dependencies for known security vulnerabilities in their requirements.txt** | Safety detects known vulnerabilities in Python dependencies by scanning installed packages against a vulnerability database. It helps identify insecure libraries and prov |
| `satori://code/github/semgrep.yml` — **Semgrep: Analyze Github Workflows** | Semgrep is a static code analysis tool with stable support for C#, Go, Java, JavaScript, JSON, Python, PHP, Ruby, and Scala. It has experimental support for nineteen othe |
| `satori://code/javascript/semgrep.yml` — **Semgrep: Analyze Javascript code** | Semgrep is a static code analysis tool with stable support for C#, Go, Java, JavaScript, JSON, Python, PHP, Ruby, and Scala. It has experimental support for nineteen othe |
| `satori://code/solidity/semgrep-solidity.yml` — **Semgrep: Solidity security rules** | Semgrep with Solidity-specific security rulesets for detecting common smart |
| `satori://code/semgrep.yml` — **Semgrep: static source code analysis** | Semgrep is a code analysis tool that searches for patterns in source code to detect vulnerabilities, enforce best practices, and identify code structure issues. It suppor |
| `satori://code/github/sisakulint.yml` — **sisakulint: SAST for Github Actions** | CI-Friendly static linter with autofix, SAST, semantic analysis for GitHub Actions |
| `satori://code/solidity/slither.yml` — **Slither: Solidity & DeFi static analysis** | Slither is a Solidity & Vyper static analysis framework that runs a suite of |
| `satori://code/solidity/solhint.yml` — **Solhint: Solidity linter and security rules** | Solhint is an open-source Solidity linter providing both security and style |
| `satori://code/java/spotbugs.yml` — **SpotBugs: Find bugs in Java code** | SpotBugs is a static analysis tool that looks for bugs in Java code. It uses the Find Security Bugs plugin to detect security vulnerabilities including SQL injection, XSS |
| `satori://code/javascript/lint/standard.yml` — **StandardJS: JavaScript style guide, linter, and formatter** | StandardJS is a JavaScript style guide, linter, and formatter. It enforces a consistent style with no configuration required, helping teams avoid bikeshedding over code s |
| `satori://code/css/lint/stylelint.yml` — **Stylelint: Linter for CSS and SCSS** | Stylelint is a mighty, modern linter that helps you avoid errors and enforce conventions in your styles. It understands the latest CSS syntax including custom properties  |
| `satori://code/swift/swiftasgen.yml` — **SwiftAstGen** | Creates Abstract Syntax Tree (AST) of all .swift files in JSON format. The AST is created by using SwiftSyntax. |
| `satori://code/swift/swiftlint.yml` — **SwiftLint: enforce Swift style and conventions** | Enforces Swift style and conventions by analyzing code and flagging violations based on predefined or custom rules, helping maintain consistency and best practices in Swi |
| `satori://code/syft.yml` — **Syft: Software Bill of Materials (SBOM) generator** | Syft by Anchore generates Software Bills of Materials (SBOMs) from container images and filesystems. It identifies packages and dependencies across dozens of ecosystems a |
| `satori://code/trivy.yml` — **Trivy** | Trivy has scanners that look for security issues, and targets where it can find those issues. |
| `satori://code/python/lint/ty.yml` — **Ty: Python type checker** | An extremely fast Python type checker and language server, written in Rust. |
| `satori://code/typescript/lint/tsc.yml` — **TypeScript Compiler: Type checking for JavaScript** | The TypeScript compiler (tsc) performs static type checking on TypeScript and JavaScript files. It can catch type errors at build time and provides excellent IDE support  |
| `satori://code/python/test/unittest.yml` — **unittest** | Runs Python's built-in unittest framework to discover and execute unit tests. |
| `satori://code/python/lint/vulture.yml` — **Vulture: Dead Code Detection** | Vulture scans Python code to find unused variables, functions, and classes. It helps identify dead code that can be removed to improve code quality and maintainability. |
| `satori://code/solidity/wake.yml` — **Wake: Solidity development & vulnerability detection** | Wake is a Python-based Solidity development and testing framework with |
| `satori://code/yamllint.yml` — **YAML Lint** | yamllint checks YAML files for syntax errors, formatting issues, and best practices by enforcing indentation, key ordering, and structure consistency. It helps prevent mi |

### Secrets Detection (5 playbooks)

| Playbook | Description |
|---|---|
| `satori://secrets/detect-secrets.yml` — **detect-secrets: find secrets within your code base** | detect-secrets identifies and prevents accidental exposure of secrets in code repositories by scanning for sensitive information such as API keys, passwords, and credenti |
| `satori://secrets/semgrep.yml` — **Find secrets using Semgrep** | Semgrep is a static code analysis tool with stable support for C#, Go, Java, JavaScript, JSON, Python, PHP, Ruby, and Scala. It has experimental support for nineteen othe |
| `satori://secrets/gitleaks.yml` — **Gitleaks: Secret Scanner** | Gitleaks is a fast, light-weight secret scanner for repos, directories, and files. It detects potential secrets like API keys, passwords, tokens, private keys and much mo |
| `satori://secrets/all.yml` — **Multi Test all Secrets: Semgrep, Trufflehog & others** | Exposing hardcoded secrets, such as API keys, passwords, cryptographic keys, and authentication credentials, increases the risk of unauthorized access, data breaches, and |
| `satori://secrets/trufflehog.yml` — **Trufflehog: Find hardcoded secrets** | trufflehog scans repositories, files, and logs for hardcoded secrets such as API keys, passwords, and cryptographic credentials. It uses pattern matching and entropy anal |

### Container & IaC (9 playbooks)

| Playbook | Description |
|---|---|
| `satori://container/iac/checkov.yml` — **Checkov: static code analysis tool for IaC** | Checkov scans cloud infrastructure configurations (Terraform, CloudFormation, Kubernetes, Helm, Azure Resource Manager, Google Deployment Manager) to find misconfiguratio |
| `satori://container/dockle.yml` — **Dockle: Container image security linter** | Dockle audits Docker container images against CIS Benchmarks and best practices. Unlike Hadolint which checks Dockerfiles, Dockle analyzes the built image to find securit |
| `satori://container/grype.yml` — **Grype: vulnerability scanner for container images and filesystems** | Grype is a vulnerability scanner for container images and filesystems. Easily install the scanner, integrate it into your project, and quickly identify known vulnerabilit |
| `satori://container/hadolint.yml` — **Hadolint: Dockerfile linter and best practices checker** | Hadolint is a smarter Dockerfile linter that helps you build best practice Docker images. It checks for syntax errors, validates inline bash code, identifies common mista |
| `satori://container/iac/kics.yml` — **KICS: Keeping Infrastructure as Code Secure** | Find security vulnerabilities, compliance issues, and infrastructure misconfigurations in Infrastructure as Code. Supports Terraform, Dockerfile, CloudFormation, Kubernet |
| `satori://container/iac/kubescape.yml` — **Kubescape: Kubernetes security platform** | Static analysis of Kubernetes YAML files for security issues and misconfigurations. |
| `satori://container/iac/terrascan.yml` — **Terrascan: detect compliance and security violations** | Terrascan is a static code analyzer for Infrastructure as Code. It detects security vulnerabilities and compliance violations across Infrastructure as Code. Supports mult |
| `satori://container/iac/tfsec.yml` — **tfsec: Security scanner for Terraform code** | tfsec uses static analysis of your terraform code to spot potential security issues. Along with basic rule checking, tfsec also checks for sensitive information in terraf |
| `satori://container/trivy.yml` — **Trivy: Vulnerability Scanner** | Scans filesystems and container images for vulnerabilities |

### Cloud Security (2 playbooks)

| Playbook | Description |
|---|---|
| `satori://cloud/prowler.yml` — **Prowler: AWS Security Best Practices Assessment Tool** | Prowler is an open-source security tool to perform AWS security best practices assessments, audits, incident response, continuous monitoring, hardening and forensics read |
| `satori://cloud/scoutsuite.yml` — **Scoutsuite: Multi-cloud security-auditing tool** | ScoutSuite is a multi-cloud security auditing tool that identifies and analyze potential misconfigurations and vulnerabilities across various cloud environments, includin |

### Monitoring (4 playbooks)

| Playbook | Description |
|---|---|
| `satori://monitor/dns-changes.yml` — **DNS Changes: Monitor DNS records for unexpected changes** | Queries DNS records (A, AAAA, MX, NS, TXT, CNAME) for a domain and asserts that expected records are present. Useful for detecting DNS hijacking, unauthorized changes, or |
| `satori://monitor/host.yml` — **Host: Check if a host has an IP address** | This playbook checks if a host resolves to a specified IP address. It installs dnsutils, runs the host command on a given hostname, and verifies that the output matches t |
| `satori://monitor/ping.yml` — **Ping: ping packets reach a host** | This playbook checks for packet loss, running a ping command with four packets to a specified host, and verifying that the output contains that there is no packet loss. |
| `satori://monitor/ssl-expiry.yml` — **SSL Expiry: Check SSL certificate expiration** | Checks the SSL certificate of a host and asserts that it is not expiring within 30 days. Reports the certificate issuer, validity dates, and days until expiration. |

### LLM (13 playbooks)

| Playbook | Description |
|---|---|
| `satori://llm/aider.yml` — **Aider: Query a remote Ollama** | Queries a remote Ollama server at a specified IP:PORT with a given model using Aider. Verifies the server is reachable and executes the query. |
| `satori://llm/all.yml` — **All LLM: Query all llm playbooks** | Queries all LLM models with the provided input. Ensures the Ollama server runs correctly, pulls the specified model, and executes the query. |
| `satori://llm/deepseek-r1.yml` — **deepseek-r1 LLM** | Queries deepseek-r1 with the provided input. Ensures the Ollama server runs correctly, pulls the specified model, and executes the query. |
| `satori://llm/gemini.yml` — **Gemini CLI** | Uses Google Gemini CLI to query a cloned repository with an AI prompt. |
| `satori://llm/llama3.2-uncensored.yml` — **Llama 3.2 uncensored: Query this LLM** | Queries Llama 3.2 uncensored with the provided input. Ensures the Ollama server runs correctly, pulls the specified model, and executes the query. |
| `satori://llm/llama3.2.yml` — **Llama 3.2: Query this LLM** | Queries Llama 3.2 with the provided input. Ensures the Ollama server runs correctly, pulls the specified model, and executes the query. |
| `satori://llm/tools/repo.yml` — **Llama repo: Query a repository using Ollama with Llama3** | Queries a GitHub repository using Llama 3.2 with Ollama. Clones the specified repository, compiles its file contents into a prompt, and queries the Llama model with the p |
| `satori://llm/llmfit.yml` — **llmfit** |  |
| `satori://llm/openai.yml` — **OpenAI gpt-oss:20b** | Runs the OpenAI gpt-oss:20b model locally using Ollama to query with custom input. |
| `satori://llm/openrouter.yml` — **OpenRouter: Query referencing a local file** | Sends a prompt plus the contents of a local file to an OpenRouter model via its OpenAI-compatible API and returns the model's answer. |
| `satori://llm/qwen.yml` — **Qwen: Query this LLM** | Queries Qwen with the provided input. Ensures the Ollama server runs correctly, pulls the specified model, and executes the query. |
| `satori://llm/tools/repo-by-file.yml` — **Repo by file: Run a query to all files of a repository** | Queries a GitHub repository using Llama 3.2 with Ollama. Clones the specified repository, compiles its file contents into a prompt, and queries the Llama model with the p |
| `satori://llm/xalgorix.yml` — **Xalgorix - LLM Pentesting** | Run xalgorix autonomous pentesting agent against a target |

### Malware Detection (4 playbooks)

| Playbook | Description |
|---|---|
| `satori://malware/are_ports_open.yml` — **Are_Ports_Open: Are there any ports listening?** | Checks for open listening ports on the system. Identifies potential unauthorized services, malware, or misconfigurations that could expose the system to network attacks o |
| `satori://malware/clamav.yml` — **Clam AV: antimalware and antivirus** | ClamAV is an open-source antivirus engine designed to detect a wide range of malicious threats, including trojans, viruses, and malware. It supports multiple file formats |
| `satori://malware/find_ip_addresses.yml` — **Find_IP_Addresses: Are IP addresses within files?** | Finds IP addresses within files by searching for numerical patterns matching IPv4 addresses. Identifies potential hardcoded connections, malware command-and-control serve |
| `satori://malware/is_video_enabled.yml` — **Is_Video_Enabled: Checks if the video has been enabled by malware** | Checks if the uvcvideo module is loaded, indicating that video functionality has been enabled. Detects potential malware activity that secretly activates webcams for unau |

### DoS Testing (2 playbooks)

| Playbook | Description |
|---|---|
| `satori://dos/siege.yml` — **Siege - Load testing web servers** | Knowing how much traffic your web server can handle when under stress is essential for planning |
| `satori://dos/slowhttptest.yml` — **SlowHTTPTest - Common low-bandwidth application layer Denial of Service attacks** | Tests: |

### API Testing (1 playbook)

| Playbook | Description |
|---|---|
| `satori://api/openapi-validator.yml` — **OpenAPI Validator: Validate OpenAPI specifications** | Uses IBM's OpenAPI Validator to check OpenAPI 3.x and Swagger 2.0 specifications for correctness, best practices, and security issues. Detects missing authentication sche |

### Password Cracking (1 playbook)

| Playbook | Description |
|---|---|
| `satori://crack/john.yml` — **John the Ripper: Crack passwords** | John the Ripper is a password cracking tool that tests password strength and recovers lost credentials by performing dictionary attacks, brute-force attacks, and cryptana |

### Load Testing (3 playbooks)

| Playbook | Description |
|---|---|
| `satori://load/ab.yml` — **ab - Apache HTTP server benchmarking tool** | ApacheBench (ab) is a tool for benchmarking HTTP servers. It shows how many |
| `satori://load/hey.yml` — **Hey - HTTP load generator** | Hey is a tiny program that sends load to a web application. It supports HTTP/2 |
| `satori://load/wrk.yml` — **wrk - Modern HTTP benchmarking tool** | wrk is a modern HTTP benchmarking tool capable of generating significant load |

### SAP Security (1 playbook)

| Playbook | Description |
|---|---|
| `satori://sap/Onapsis_CVE-2025-31324.yml` — **Scanner for CVE-2025-31324 SAP NetWeaver** | Onapsis Scanner for Vulnerability CVE-2025-31324 (SAP Security 3594142) - CVSS 10 (Critical). This tool checks for the presence of the vulnerability and known webshells i |

### Test (1 playbook)

| Playbook | Description |
|---|---|
| `satori://test/severity.yml` — **Test: Severity** | Test playbook that validates severity level assertions from Blocker (0) to Informational (5). |

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
