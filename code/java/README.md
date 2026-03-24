# Java

Security analysis playbooks for Java source code.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [spotbugs.yml](spotbugs.yml) | SpotBugs | Static analysis tool that finds bugs in Java code using the Find Security Bugs plugin for OWASP Top 10 detection |

## Usage

```bash
satori run satori://code/java/spotbugs.yml --repo OWASP-Benchmark/BenchmarkJava --report --output
```
