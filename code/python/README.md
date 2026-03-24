# Python

Security analysis, dependency auditing, linting, type checking, and testing playbooks for Python projects.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [audit.yml](audit.yml) | Pip Audit | Checks for known vulnerabilities in Python dependencies using the PyPI advisory database |
| [bandit.yml](bandit.yml) | Bandit | Finds common security issues in Python code by processing AST nodes |
| [bloky.yml](bloky.yml) | Bloky | Detects blocking operations in Python async code that could cause performance issues |
| [pysource-codegen.yml](pysource-codegen.yml) | pysource-codegen | Generates random compilable Python code to test linters, formatters, and other tools |
| [pyspector.yml](pyspector.yml) | PySpector | SAST framework for Python with a Rust core for high-speed vulnerability scanning |
| [safety.yml](safety.yml) | Safety | Detects known vulnerabilities in Python dependencies by scanning requirements files |

### Linters

| Playbook | Tool | Description |
|----------|------|-------------|
| [lint/autopep8.yml](lint/autopep8.yml) | Autopep8 | Automatically formats Python code to conform to PEP 8 |
| [lint/basedmypy.yml](lint/basedmypy.yml) | BasedMypy | Enhanced Python static type checker built on mypy with intersection types and better inference |
| [lint/basedpyright.yml](lint/basedpyright.yml) | BasedPyright | Fork of Pyright with enhanced type checking and integrated Pylance features |
| [lint/black.yml](lint/black.yml) | Black | Uncompromising Python code formatter that enforces a consistent style |
| [lint/flake8.yml](lint/flake8.yml) | Flake8 | Wrapper around PyFlakes, pycodestyle, and McCabe for style and quality checking |
| [lint/isort.yml](lint/isort.yml) | Isort | Automatically sorts and organizes Python imports |
| [lint/mypy.yml](lint/mypy.yml) | Mypy | Static type checker that enforces type annotations and detects type errors |
| [lint/prospector.yml](lint/prospector.yml) | Prospector | Meta-linter that aggregates results from pylint, mypy, pep8, and other tools |
| [lint/pycodestyle.yml](lint/pycodestyle.yml) | Pycodestyle | Checks Python code against the PEP 8 style guide |
| [lint/pydocstyle.yml](lint/pydocstyle.yml) | Pydocstyle | Checks compliance with Python docstring conventions (PEP 257) |
| [lint/pyflakes.yml](lint/pyflakes.yml) | Pyflakes | Fast linter that detects unused imports and undefined variables |
| [lint/pylama.yml](lint/pylama.yml) | Pylama | Code audit wrapper that aggregates results from multiple linters |
| [lint/pylint.yml](lint/pylint.yml) | Pylint | Analyses code for errors, enforces coding standards, and looks for code smells |
| [lint/pyrefly.yml](lint/pyrefly.yml) | Pyrefly | Python static analyzer by Facebook |
| [lint/pyright.yml](lint/pyright.yml) | Pyright | Full-featured, standards-based static type checker for Python by Microsoft |
| [lint/pytype.yml](lint/pytype.yml) | Pytype | Static type checker for Python by Google |
| [lint/radon.yml](lint/radon.yml) | Radon | Provides code metrics including cyclomatic complexity and maintainability index |
| [lint/ruff.yml](lint/ruff.yml) | Ruff | Extremely fast Python linter and formatter by Astral |
| [lint/ty.yml](lint/ty.yml) | Ty | Extremely fast Python type checker written in Rust by Astral |
| [lint/vulture.yml](lint/vulture.yml) | Vulture | Scans Python code to find unused variables, functions, and classes (dead code) |

### Testing

| Playbook | Tool | Description |
|----------|------|-------------|
| [test/pytest.yml](test/pytest.yml) | pytest | Enhanced unit testing with automatic dependency installation and test discovery |
| [test/unittest.yml](test/unittest.yml) | unittest | Python's built-in unittest framework for discovering and executing unit tests |

## Usage

```bash
satori run ./ --playbook satori://code/python/bandit.yml --report --output
satori run ./ --playbook satori://code/python/lint/ruff.yml --report --output
satori run ./ --playbook satori://code/python/test/pytest.yml --report --output
```
