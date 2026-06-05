# Cloud Security Playbooks

Playbooks for auditing and assessing the security posture of cloud infrastructure across AWS, Azure, GCP, and more.

Naming convention: `<cloud>-<tool>.yml` for single tools, and the `-ai` suffix for the AI-correlated (Gemini via OpenRouter) playbooks. The `-ai` meta-playbooks import the individual tool playbooks and correlate their findings.

## AWS

| Playbook | Tool | Description |
|----------|------|-------------|
| [aws-prowler.yml](aws-prowler.yml) | Prowler | AWS security best-practices assessment (CIS, PCI-DSS, ISO27001, GDPR, HIPAA, SOC2, etc.). |
| [aws-scoutsuite.yml](aws-scoutsuite.yml) | ScoutSuite | AWS misconfiguration/posture audit with an interactive report. |
| [aws-scoutsuite-ai.yml](aws-scoutsuite-ai.yml) | ScoutSuite + AI | ScoutSuite AWS audit summarized into a markdown table by Gemini Flash. |
| [aws-assessment-ai.yml](aws-assessment-ai.yml) | Multi-tool + AI | Multi-tool AWS audit (ScoutSuite, Prowler, IAM over-privilege, Cloudsplaining, GuardDuty, Security Hub, Access Analyzer) correlated by Gemini Flash. |

## Azure / Entra ID

| Playbook | Tool | Description |
|----------|------|-------------|
| [azure-scoutsuite.yml](azure-scoutsuite.yml) | ScoutSuite | Azure/Entra posture audit via an Entra service principal. |
| [azure-prowler.yml](azure-prowler.yml) | Prowler | Azure CIS/compliance assessment via service principal. |
| [azurehound.yml](azurehound.yml) | AzureHound | Collects the Entra/Azure tenant graph (BloodHound) and surfaces privileged-role holders / attack-path signal. |
| [m365-maester.yml](m365-maester.yml) | Maester | 280+ Microsoft 365 / Entra ID security tests (EIDSCA, CIS M365, CISA SCuBA). |
| [azure-compliance-ai.yml](azure-compliance-ai.yml) | ScoutSuite + Prowler + AI | Imports azure-scoutsuite + azure-prowler; Gemini correlates compliance/posture findings. |
| [azure-exploitability-ai.yml](azure-exploitability-ai.yml) | AzureHound + Maester + AI | Imports azurehound + m365-maester; Gemini correlates an exploitability-ranked report (attack paths + account takeover). |

## Usage

```bash
satori run satori://cloud/aws-prowler.yml -d AWS_ACCESS_KEY=key -d AWS_SECRET_KEY=secret --report --output
satori run satori://cloud/aws-scoutsuite.yml -d AWS_ACCESS_KEY=TBC -d AWS_SECRET_KEY=TBC --files --report --output
satori run satori://cloud/azure-exploitability-ai.yml -d AZURE_CLIENT_ID=$AZURE_CLIENT_ID -d AZURE_CLIENT_SECRET=$AZURE_CLIENT_SECRET -d AZURE_TENANT_ID=$AZURE_TENANT_ID -d OPENROUTER=$OPENROUTER --report --output
```
