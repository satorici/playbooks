# DoS

Playbooks for Denial of Service testing and load testing against web servers. These playbooks must only be run against servers you own or have explicit permission to test.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [siege.yml](siege.yml) | Siege | Load testing web servers |
| [slowhttptest.yml](slowhttptest.yml) | SlowHTTPTest | Common low-bandwidth application layer Denial of Service attacks |

## Usage

```bash
satori run satori://dos/siege.yml -d URL="satori.ci" --report --output
satori run satori://dos/slowhttptest.yml -d URL="satori.ci" --report --output
```
