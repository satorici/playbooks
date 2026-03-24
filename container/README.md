# Container Security

Playbooks for scanning container images, Dockerfiles, and infrastructure-as-code configurations for vulnerabilities, misconfigurations, and best practice violations.

## Playbooks

### Image & Dockerfile Scanning

| Playbook | Tool | Description |
|----------|------|-------------|
| [dockle.yml](dockle.yml) | Dockle | Audits Docker container images against CIS Benchmarks and best practices, finding issues like running as root, missing HEALTHCHECK, and exposed credentials |
| [grype.yml](grype.yml) | Grype | Vulnerability scanner for container images and filesystems that identifies known vulnerabilities in packages and dependencies |
| [hadolint.yml](hadolint.yml) | Hadolint | Dockerfile linter that checks for syntax errors, validates inline bash code, and verifies Dockerfile best practices |
| [trivy.yml](trivy.yml) | Trivy | Scans filesystems and container images for vulnerabilities |

### Infrastructure as Code (IaC)

| Playbook | Tool | Description |
|----------|------|-------------|
| [iac/checkov.yml](iac/checkov.yml) | Checkov | Scans cloud infrastructure configurations (Terraform, CloudFormation, Kubernetes, Helm, ARM, GDM) to find misconfigurations |
| [iac/kics.yml](iac/kics.yml) | KICS | Finds security vulnerabilities, compliance issues, and misconfigurations in Terraform, Dockerfile, CloudFormation, Kubernetes, Helm, and more |
| [iac/kubescape.yml](iac/kubescape.yml) | Kubescape | Static analysis of Kubernetes YAML files for security issues and misconfigurations |
| [iac/terrascan.yml](iac/terrascan.yml) | Terrascan | Detects security vulnerabilities and compliance violations across IaC for AWS, Azure, GCP, and Kubernetes |
| [iac/tfsec.yml](iac/tfsec.yml) | tfsec | Security scanner for Terraform code that spots potential security issues via static analysis of HCL2 and JSON configurations |

## Usage

Scan a container image for vulnerabilities:

```bash
satori run satori://container/grype.yml -d IMAGE="python:3.4-alpine" --report --output
```

Scan a container image with Trivy:

```bash
satori run satori://container/trivy.yml -d IMAGE=python:3.4-alpine --report --output
```

Lint Dockerfiles in the current directory:

```bash
satori run ./ --playbook satori://container/hadolint.yml --report --output
```

Scan IaC files in the current directory:

```bash
satori run ./ --playbook satori://iac/checkov.yml --report --output
```
