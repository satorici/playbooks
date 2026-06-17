# DNS

Playbooks for DNS reconnaissance, subdomain enumeration, brute-forcing, resolution, and subdomain takeover detection.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [assetfinder.yml](assetfinder.yml) | AssetFinder | Find domains and subdomains potentially related to a domain |
| [caa.yml](caa.yml) | DNS CAA: Certificate Authority Authorization check | Checks if a domain has DNS CAA records configured. CAA records restrict which Certificate Authorities can issue certificates for the domain, preventing unauthorized certificate issuance. |
| [cdncheck.yml](cdncheck.yml) | cdncheck | Identify the technology associated with a host (CDN, CLOUD or WAF) |
| [dns-enum.yml](dns-enum.yml) | DNS Enum: Full DNS footprint mapping | Maps the target's full DNS footprint using dig for record resolution and crt.sh certificate transparency logs for subdomain discovery. Passive reconnaissance only. |
| [dnscan.yml](dnscan.yml) | dnscan | Zone transfer and brute force DNS subdomains |
| [dnsrecon.yml](dnsrecon.yml) | DNSRecon | General domain name enumeration |
| [dnssec.yml](dnssec.yml) | DNSSEC: DNS Security Extensions validation | Checks if a domain has DNSSEC enabled by verifying the presence of DNSKEY and RRSIG records, protecting against DNS spoofing and cache poisoning. |
| [dnsx.yml](dnsx.yml) | dnsX | Queries all DNS records of a domain |
| [goaltdns.yml](goaltdns.yml) | GoAltdns | Subdomain generation through permutations |
| [gobuster-dns.yml](gobuster-dns.yml) | gobuster-dns | Brute force DNS subdomains |
| [gotator.yml](gotator.yml) | Gotator | Generate DNS wordlists through permutations |
| [hakrevdns.yml](hakrevdns.yml) | hakrevdns | Reverse DNS lookup |
| [knockpy.yml](knockpy.yml) | Knockpy | Enumerate subdomains through passive reconnaissance and dictionary scan |
| [massdns.yml](massdns.yml) | MassDNS | Enumerates DNS records |
| [puredns.yml](puredns.yml) | Puredns | Domain resolver and subdomain bruteforcing |
| [shuffledns.yml](shuffledns.yml) | shuffleDNS | Enumerate valid subdomains using active bruteforce and resolving subdomains |
| [subzy.yml](subzy.yml) | Subzy | Subdomain takeover tool that matches response fingerprints from can-i-take-over-xyz |
| [tko-subs.yml](tko-subs.yml) | tko-subs | Detect and takeover subdomains with dead DNS records |
| [whois-check.yml](whois-check.yml) | WHOIS: Domain registration and expiry check | Checks domain WHOIS data including registration date, expiry date, registrar, and domain status. |

### Passive

| Playbook | Tool | Description |
|----------|------|-------------|
| [passive/subfinder.yml](passive/subfinder.yml) | Subfinder | Discover valid subdomains using passive online sources |
| [passive/sublist3r.yml](passive/sublist3r.yml) | Sublist3r | Enumerate subdomains using search engines |

## Usage

```bash
satori run satori://dns/assetfinder.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/caa.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/cdncheck.yml -d HOST="satori.ci" --report --output
satori run satori://dns/dns-enum.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/dnscan.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/dnsrecon.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/dnssec.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/dnsx.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/goaltdns.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/gobuster-dns.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/gotator.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/hakrevdns.yml -d IP="54.210.33.205" -d IP="3.93.207.195" --report --output
satori run satori://dns/knockpy.yml -d DOMAIN="hackerone.com" --report --output
satori run satori://dns/massdns.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/puredns.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/shuffledns.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/subzy.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/tko-subs.yml -d DOMAIN="example.com" --report --output
satori run satori://dns/whois-check.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/passive/subfinder.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/passive/sublist3r.yml -d DOMAIN="satori.ci" --report --output
```
