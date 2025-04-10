# automation-local-ai

This project provides a fully automated setup to run a local Large Language Model (LLM) using [Ollama](https://ollama.com) and [Open WebUI](https://github.com/open-webui/open-webui), all containerized with Podman. It is designed for macOS but can be adapted to other systems.

## 🚀 Features

- Run local LLMs (like LLaMA2, Mistral, Phi, etc.) entirely offline
- Simple startup with one shell script
- Web interface (Open WebUI) to interact with the model
- Containerized with Podman (Docker alternative)
- API access for scripting and integration

## 📁 Structure

- `start-ollama-ai.sh`: Starts and configures Ollama + WebUI
- `destroy-ollama-ai.sh`: Stops and removes containers and volumes
- `resumo_ollama.txt`: Summary of available features

## ⚙️ Requirements

- Podman installed (tested on macOS)
- Internet connection to download the image and models
- ~10GB of free disk space
- Python 3+ (optional for scripting)

## 🧪 Quick Start

```bash
# Start the local AI environment
./start-ollama-ai.sh

# Access the Web UI
http://localhost:3000

# Destroy everything
./destroy-ollama-ai.sh
```

## 🤖 Example API Call

```bash
curl http://localhost:11434/api/generate -d '{
  "model": "llama2",
  "prompt": "What is artificial intelligence?"
}'
```

## 📌 Notes

- All data and models are stored locally in Podman volumes
- You can change the default model in the `start-ollama-ai.sh` script
- Works offline after the first model is downloaded

## 📄 License

This project is licensed under the MIT License.