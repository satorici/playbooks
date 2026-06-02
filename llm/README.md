# LLM

Playbooks for querying and interacting with large language models via Ollama, Aider, Gemini, and other LLM tools.

## Playbooks

| Playbook | Tool | Description |
|----------|------|-------------|
| [aider.yml](aider.yml) | Aider | Queries a remote Ollama server at a specified IP:PORT with a given model using Aider |
| [all.yml](all.yml) | Ollama | Queries all LLM models with the provided input |
| [deepseek-r1.yml](deepseek-r1.yml) | Ollama | Queries deepseek-r1 with the provided input |
| [gemini.yml](gemini.yml) | Gemini CLI | Uses Google Gemini CLI to query a cloned repository with an AI prompt |
| [llama3.2-uncensored.yml](llama3.2-uncensored.yml) | Ollama | Queries Llama 3.2 uncensored with the provided input |
| [llama3.2.yml](llama3.2.yml) | Ollama | Queries Llama 3.2 with the provided input |
| [llmfit.yml](llmfit.yml) | llmfit | Runs the llmfit CLI tool |
| [openai.yml](openai.yml) | Ollama | Runs the OpenAI gpt-oss:20b model locally using Ollama |
| [openrouter.yml](openrouter.yml) | OpenRouter | Sends a prompt plus the contents of a local file to an OpenRouter model and returns the answer |
| [qwen.yml](qwen.yml) | Ollama | Queries Qwen with the provided input |
| [tools/repo-by-file.yml](tools/repo-by-file.yml) | Ollama | Queries a GitHub repository file-by-file using Llama 3.2 with Ollama |
| [tools/repo.yml](tools/repo.yml) | Ollama | Queries a GitHub repository using Llama 3.2 with Ollama |

## Usage

```bash
satori run satori://llm/aider.yml -d HOST="103.48.43.25:11434" -d MODEL="ollama/qwen2.5-coder:32b" -d INPUT="Hello World" --report --output
```

```bash
satori run satori://llm/all.yml -d INPUT="Hello World" --report --output
```

```bash
satori run satori://llm/deepseek-r1.yml -d INPUT="Hello World" --report --output
```

```bash
satori run satori://llm/gemini.yml -d REPO="owner/repo" -d PROMPT="Analyze this code" -d GEMINI_API_KEY=$GEMINI_API_KEY --report --output
```

```bash
satori run satori://llm/tools/repo.yml -d INPUT="What does example.c and attack.c do?" -d REPO="royleekiat/overflow-example" --report --output
```

```bash
satori local ./ -p satori://llm/openrouter.yml -d FILE="./main.py" -d PROMPT="Review this file for bugs" -d MODEL="google/gemini-2.5-flash" -d OPENROUTER=$OPENROUTER --output
```
