# Ruby

Code transformation playbooks for Ruby projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [erb-to-epp.yml](erb-to-epp.yml) | ERB to EPP | Converts Embedded Ruby (.erb) templates into Embedded Puppet (.epp) format |

## Usage

```bash
satori run ./ --playbook satori://code/ruby/erb-to-epp.yml --report --output
```
