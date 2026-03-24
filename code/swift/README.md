# Swift

Code analysis and linting playbooks for Swift projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [swiftasgen.yml](swiftasgen.yml) | SwiftAstGen | Creates Abstract Syntax Tree (AST) of all .swift files in JSON format using SwiftSyntax |
| [swiftlint.yml](swiftlint.yml) | SwiftLint | Enforces Swift style and conventions by analyzing code and flagging violations |

## Usage

```bash
satori run ./ --playbook satori://code/swift/swiftlint.yml --report --output
satori run ./ --playbook satori://code/swift/swiftasgen.yml --report --output
```
