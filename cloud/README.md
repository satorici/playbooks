# Cloud Security Playbooks

Playbooks for auditing and assessing the security posture of cloud infrastructure across AWS, Azure, GCP, and more.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [prowler.yml](prowler.yml) | Prowler | Open-source security tool to perform AWS security best practices assessments, audits, incident response, continuous monitoring, hardening and forensics readiness. Covers CIS, PCI-DSS, ISO27001, GDPR, HIPAA, FFIEC, SOC2, AWS FTR, ENS and custom security frameworks. |
| [scoutsuite.yml](scoutsuite.yml) | ScoutSuite | Multi-cloud security auditing tool that identifies and analyzes potential misconfigurations and vulnerabilities across AWS, Azure, GCP, and more. Generates comprehensive web-based interactive reports highlighting key security findings. |

## Usage

```bash
satori run satori://cloud/prowler.yml -d AWS_ACCESS_KEY=key -d AWS_SECRET_KEY=secret --report --output
```

```bash
satori run satori://cloud/scoutsuite.yml -d AWS_ACCESS_KEY=TBC -d AWS_SECRET_KEY=TBC --files --report --output
```
