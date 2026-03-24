# Mobile

Security analysis playbooks for Android and iOS mobile applications.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [apkleaks.yml](apkleaks.yml) | APKLeaks | Scans Android APK files for URIs, endpoints, API keys, secrets, and other sensitive strings |
| [mobsfscan.yml](mobsfscan.yml) | MobSFScan | SAST for mobile code that finds insecure code patterns in Android and iOS source (Java, Kotlin, Swift, Objective-C) |

## Usage

```bash
satori run ./ --playbook satori://code/mobile/apkleaks.yml --report --output
satori run ./ --playbook satori://code/mobile/mobsfscan.yml --report --output
```
