# Password Cracking

Playbooks for testing password strength and recovering credentials using dictionary attacks, brute-force attacks, and cryptanalysis.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [john.yml](john.yml) | John the Ripper | Tests password strength and recovers lost credentials by performing dictionary attacks, brute-force attacks, and cryptanalysis on various password hash types |

## Usage

Crack a password hash:

```bash
satori run satori://crack/john.yml -d PASS='$2b$10$heqvAkYMez.Va6Et2uXInOnkCT6/uQj1brkrbyG3LpopDklcq7ZOS' --cpu 16384 --memory 32768 --report --output
```
