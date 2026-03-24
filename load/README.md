# Load Testing

Playbooks for HTTP load testing and benchmarking to measure server performance, latency distribution, and throughput under concurrent connections.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [ab.yml](ab.yml) | ApacheBench (ab) | Apache HTTP server benchmarking tool that measures requests per second, connection times, transfer rates, and percentile latency breakdown |
| [hey.yml](hey.yml) | Hey | Tiny HTTP load generator with HTTP/2 support that provides detailed latency distribution, status code breakdown, and throughput metrics |
| [wrk.yml](wrk.yml) | wrk | Modern multithreaded HTTP benchmarking tool that generates significant load on a single multi-core CPU with detailed latency statistics |

## Usage

```bash
satori run satori://load/ab.yml -d URL="https://satori.ci/" --report --output
```

```bash
satori run satori://load/hey.yml -d URL="https://satori.ci" --report --output
```

```bash
satori run satori://load/wrk.yml -d URL="https://satori.ci" --report --output
```
