# Solidity Security Playbooks

Automated security analysis for Solidity smart contracts. All playbooks support **Foundry** and **Hardhat** projects with automatic dependency installation.

## Playbooks

| Playbook | Tool | Author | What it detects |
|----------|------|--------|----------------|
| [slither.yml](slither.yml) | [Slither](https://github.com/crytic/slither) | Crytic | Reentrancy, unprotected upgrades, arbitrary send, unchecked calls, state variable shadowing, 90+ detectors |
| [mythril.yml](mythril.yml) | [Mythril](https://github.com/Consensys/mythril) | Consensys | Reentrancy, DoS, unprotected ether withdrawal, unchecked return values, assert violations via symbolic execution & SMT solving |
| [aderyn.yml](aderyn.yml) | [Aderyn](https://github.com/Cyfrin/aderyn) | Cyfrin | Arbitrary transferFrom, reentrancy, centralization risks, unchecked returns via Rust-based AST analysis |
| [wake.yml](wake.yml) | [Wake](https://github.com/Ackee-Blockchain/wake) | Ackee Blockchain | Cross-contract reentrancy, unsafe delegatecall, selfdestruct, tx.origin usage |
| [solhint.yml](solhint.yml) | [Solhint](https://github.com/protofire/solhint) | Protofire | tx.origin, low-level calls, missing visibility, inline assembly, time dependence, compiler version |
| [semgrep-solidity.yml](semgrep-solidity.yml) | [Semgrep](https://github.com/semgrep/semgrep) + [Decurity rules](https://github.com/Decurity/semgrep-smart-contracts) | Semgrep / Decurity | Flash loan attacks, oracle manipulation, access control issues, DeFi anti-patterns |
| [4naly3er.yml](4naly3er.yml) | [4naly3er](https://github.com/Picodes/4naly3er) | Picodes | Gas optimizations, QA issues, low-severity findings for audit contests (Code4rena, Sherlock) |
| [defi-sast.yml](defi-sast.yml) | Slither + Semgrep + Solhint | Satori CI | Full DeFi security suite combining all three tools in a single run |

## Usage

```bash
# Run any playbook against a GitHub repo
satori run satori://code/solidity/slither.yml --repo <owner/repo> --report --output

# Run the full DeFi SAST suite
satori run satori://code/solidity/defi-sast.yml --repo <owner/repo> --report --output

# Run against a local project
satori run satori://code/solidity/slither.yml --local --report --output
```

## Severity Levels

All playbooks classify findings into severity levels:

| Severity | Level | Examples |
|----------|-------|---------|
| Critical | 1 | Reentrancy, unprotected upgrades, selfdestruct, arbitrary send |
| High | 2 | Unchecked transfers, uninitialized state variables, state variable shadowing |
| Medium | 3 | Dangerous strict equality, block timestamp dependence, unused return values |
| Low | 4 | Calls inside loops, missing events, incorrect Solidity versions |
| Info | 5 | Gas optimizations, style issues |

## Tested Against

These playbooks have been validated against intentionally vulnerable repos:

- [SunWeb3Sec/DeFiVulnLabs](https://github.com/SunWeb3Sec/DeFiVulnLabs) — DeFi vulnerability examples (Foundry)
- [crytic/not-so-smart-contracts](https://github.com/crytic/not-so-smart-contracts) — Common Solidity vulnerabilities
- [smartbugs/smartbugs-curated](https://github.com/smartbugs/smartbugs-curated) — Curated dataset of vulnerable contracts
