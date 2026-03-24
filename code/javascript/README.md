# JavaScript

Security analysis, dependency checking, and linting playbooks for JavaScript projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [dependencycheck.yml](dependencycheck.yml) | OWASP DependencyCheck | Multi-language Software Composition Analysis (SCA) tool that verifies publicly disclosed vulnerabilities in project dependencies |
| [npmaudit.yml](npmaudit.yml) | NPM Audit | Checks for known vulnerabilities in npm dependencies |
| [retirejs.yml](retirejs.yml) | Retire.js | Detects JavaScript libraries and Node.js modules with known vulnerabilities |
| [semgrep.yml](semgrep.yml) | Semgrep | Static code analysis focused on JavaScript security patterns |

### Linters

| Playbook | Tool | Description |
|----------|------|-------------|
| [lint/biome.yml](lint/biome.yml) | Biome | Fast formatter and linter for JS, TS, JSX, and JSON with 97% Prettier compatibility |
| [lint/eslint.yml](lint/eslint.yml) | ESLint | JavaScript and TypeScript code analysis with security-focused rules |
| [lint/jscpd.yml](lint/jscpd.yml) | JSCPD | Copy/paste detector for identifying duplicated code |
| [lint/jsdoc.yml](lint/jsdoc.yml) | JSDoc | API documentation generator for JavaScript |
| [lint/jshint.yml](lint/jshint.yml) | JSHint | Static code analysis tool that detects errors and potential problems in JavaScript code |
| [lint/prettier.yml](lint/prettier.yml) | Prettier | Opinionated code formatter supporting many languages |
| [lint/standard.yml](lint/standard.yml) | StandardJS | JavaScript style guide, linter, and formatter with zero configuration |

## Usage

```bash
satori run ./ --playbook satori://code/javascript/npmaudit.yml --report --output
satori run ./ --playbook satori://code/javascript/lint/eslint.yml --report --output
```
