# Code Analysis

Playbooks for static application security testing (SAST), linting, software composition analysis (SCA), and code quality tools across multiple programming languages.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [bearer.yml](bearer.yml) | Bearer | Static application security testing (SAST) tool that scans source code and analyzes data flows to identify security and privacy risks |
| [brakeman.yml](brakeman.yml) | Brakeman | Static analysis security vulnerability scanner for Ruby on Rails applications |
| [cloc.yml](cloc.yml) | CLOC | Counts blank lines, comment lines, and physical lines of source code in many programming languages |
| [cobol.yml](cobol.yml) | COBOL minimal SAST | Lightweight COBOL scanner for meaningful security coverage |
| [codeql.yml](codeql.yml) | CodeQL | Semantic code analysis engine that finds security vulnerabilities in JavaScript, Python, and Ruby codebases |
| [cppcheck.yml](cppcheck.yml) | Cppcheck | Static analysis tool for detecting bugs, undefined behavior, and security vulnerabilities in C and C++ code |
| [hounddog.yml](hounddog.yml) | HoundDog | Detects and prevents exposure of sensitive data including PII, PHI, and authentication tokens |
| [joern.yml](joern.yml) | Joern | Open-source code analysis platform for C/C++/Java/Binary/Javascript/Python/Kotlin based on code property graphs |
| [osv-scanner.yml](osv-scanner.yml) | OSV-Scanner | Google's vulnerability scanner for project dependencies using the OSV.dev database |
| [rubocop.yml](rubocop.yml) | RuboCop | Ruby static code analyzer and formatter enforcing community Ruby Style Guide |
| [semgrep.yml](semgrep.yml) | Semgrep | Static code analysis tool that searches for patterns in source code to detect vulnerabilities and enforce best practices |
| [syft.yml](syft.yml) | Syft | Software Bill of Materials (SBOM) generator for container images and filesystems by Anchore |
| [trivy.yml](trivy.yml) | Trivy | Scans for known vulnerabilities (CVEs), IaC misconfigurations, sensitive information, and software licenses |
| [horusec.yml](horusec.yml) | Horusec | Multi-language SAST tool that identifies vulnerabilities across 18+ languages using 20+ security analysis engines |
| [yamllint.yml](yamllint.yml) | YAML Lint | Checks YAML files for syntax errors, formatting issues, and best practices |

## Language-Specific Playbooks

| Directory | Language / Domain |
|-----------|-------------------|
| [abap/](abap/) | ABAP (SAP) |
| [css/](css/) | CSS / SCSS |
| [github/](github/) | GitHub Actions & Repositories |
| [go/](go/) | Go |
| [java/](java/) | Java |
| [javascript/](javascript/) | JavaScript |
| [mobile/](mobile/) | Mobile (Android / iOS) |
| [python/](python/) | Python |
| [ruby/](ruby/) | Ruby |
| [rust/](rust/) | Rust |
| [solidity/](solidity/) | Solidity (Smart Contracts) |
| [swift/](swift/) | Swift |
| [typescript/](typescript/) | TypeScript |

## Usage

```bash
satori run ./ --playbook satori://code/semgrep.yml --report --output
```
