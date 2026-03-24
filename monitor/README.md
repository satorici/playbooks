# Monitor

Playbooks for monitoring infrastructure health, DNS records, network connectivity, and SSL certificate status.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [dns-changes.yml](dns-changes.yml) | dig | Monitors DNS records (A, AAAA, MX, NS, TXT, CNAME) for unexpected changes or hijacking |
| [host.yml](host.yml) | host | Checks if a hostname resolves to a specified IP address |
| [ping.yml](ping.yml) | ping | Checks for packet loss by pinging a host with four packets |
| [ssl-expiry.yml](ssl-expiry.yml) | openssl | Checks SSL certificate expiration and warns if expiring within 30 days |

## Usage

```bash
satori run satori://monitor/dns-changes.yml -d HOST="satori.ci" -d EXPECTED_IP="1.2.3.4" --report --output
```

```bash
satori run satori://monitor/host.yml -d HOST="host_name" -d IP="ip_adress" --report --output
```

```bash
satori run satori://monitor/ping.yml -d HOST="satori.ci" --report --output
```

```bash
satori run satori://monitor/ssl-expiry.yml -d HOST="expired.badssl.com" --report --output
```
