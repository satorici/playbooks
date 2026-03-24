# API Security Playbooks

Playbooks for validating and securing API specifications and endpoints.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [openapi-validator.yml](openapi-validator.yml) | IBM OpenAPI Validator | Uses IBM's OpenAPI Validator to check OpenAPI 3.x and Swagger 2.0 specifications for correctness, best practices, and security issues. Detects missing authentication schemes, insecure endpoints, and spec violations. |

## Usage

```bash
satori run satori://api/openapi-validator.yml -d SPEC_URL="https://petstore3.swagger.io/api/v3/openapi.json" --report --output
```
