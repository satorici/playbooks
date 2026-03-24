# DNS

Playbooks for DNS reconnaissance, subdomain enumeration, brute-forcing, resolution, and subdomain takeover detection.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [assetfinder.yml](assetfinder.yml) | AssetFinder | Find domains and subdomains potentially related to a domain |
| [cdncheck.yml](cdncheck.yml) | cdncheck | Identify the technology associated with a host (CDN, CLOUD or WAF) |
| [dnscan.yml](dnscan.yml) | dnscan | Zone transfer and brute force DNS subdomains |
| [dnsrecon.yml](dnsrecon.yml) | DNSRecon | General domain name enumeration |
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

### Passive

| Playbook | Tool | Description |
|----------|------|-------------|
| [passive/subfinder.yml](passive/subfinder.yml) | Subfinder | Discover valid subdomains using passive online sources |
| [passive/sublist3r.yml](passive/sublist3r.yml) | Sublist3r | Enumerate subdomains using search engines |

## Usage

```bash
satori run satori://dns/assetfinder.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/cdncheck.yml -d HOST="satori.ci" --report --output
satori run satori://dns/dnscan.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/dnsrecon.yml -d DOMAIN="satori.ci" --report --output
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
satori run satori://dns/passive/subfinder.yml -d DOMAIN="satori.ci" --report --output
satori run satori://dns/passive/sublist3r.yml -d DOMAIN="satori.ci" --report --output
```
