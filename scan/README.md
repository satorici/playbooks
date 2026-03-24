# Network Scanning

Playbooks for network port scanning, banner grabbing, service enumeration, and host discovery across IP ranges and targets.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [banner-scanner.yml](banner-scanner.yml) | Banner Scanner | Grabs banners from a list of IP addresses on a specified port using concurrent connections |
| [host_port.yml](host_port.yml) | Host Port Scanner | Scans bug bounty target hosts from public domain lists using a specified playbook and port list in parallel |
| [http.yml](http.yml) | ZMap + ZGrab2 (HTTP) | Scans an IP range for open HTTP ports using ZMap and ZGrab2 with sharding support, then aggregates banner results |
| [https.yml](https.yml) | ZMap + ZGrab2 (HTTPS) | Scans an IP range for open HTTPS ports using ZMap and ZGrab2 with sharding support, then aggregates banner results |
| [iperf3.yml](iperf3.yml) | IPerf3 | Network performance measurement tool that tests bandwidth, jitter, and packet loss between hosts |
| [masscan.yml](masscan.yml) | Masscan | Scans a target host for a specific port and rate using masscan |
| [naabu.yml](naabu.yml) | Naabu | Port scanning tool written in Go that enumerates valid ports for hosts using fast SYN/CONNECT/UDP scans |
| [nmap.yml](nmap.yml) | Nmap | Open-source tool used to scan IP addresses and ports in a network and detect installed applications and vulnerabilities |
| [rustscan.yml](rustscan.yml) | RustScan | Modern port scanner that rapidly scans all 65,535 ports in approximately 3 seconds with scripting engine support |
| [smap.yml](smap.yml) | Smap | Port scanner built with Shodan's free API, functioning as a faster alternative to Nmap |
| [ssh-audit.yml](ssh-audit.yml) | ssh-audit | Analyzes SSH server configurations to identify weak algorithms, outdated protocols, and security misconfigurations |
| [sshamble.yml](sshamble.yml) | SSHamble | SSH security testing tool that identifies misconfigurations, weak credentials, and unexpected exposures |
| [zgrab2.yml](zgrab2.yml) | ZGrab2 | Modular application-layer network scanner that grabs banners and metadata from services on specified ports |
| [zmap-scanner.yml](zmap-scanner.yml) | ZMap Scanner | Orchestrates ZMap scans across IP ranges using sharding, collects results, and uploads them to a repository |
| [zmap-webbanner.yml](zmap-webbanner.yml) | ZMap Web Banner | Scans IP ranges using ZMap to discover hosts with open ports |
| [zmap-zgrab2-https.yml](zmap-zgrab2-https.yml) | ZMap + ZGrab2 | Combines ZMap for fast port scanning with ZGrab2 for HTTPS banner grabbing across IP ranges |
| [zmap-zgrab2.yml](zmap-zgrab2.yml) | ZMap + ZGrab2 | Combines ZMap for fast port scanning with ZGrab2 for HTTP banner grabbing across IP ranges |
| [zmap.yml](zmap.yml) | ZMap | Fast single-packet network scanner optimized for Internet-wide network surveys |

## Usage

```bash
satori run satori://scan/nmap.yml -d HOST="mytestsite.com" --report --output
```

```bash
satori run satori://scan/naabu.yml -d HOST="satori.ci" --report --output
```

```bash
satori run satori://scan/zmap-zgrab2.yml --count 60000 -d PORT=80 -d RANGE=0.0.0.0/0 --report --output --files
```
