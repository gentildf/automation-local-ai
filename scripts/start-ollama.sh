#!/bin/bash

echo "🔧 Criando volumes..."
podman volume create ollama-data
podman volume create open-webui-data

echo "🐳 Subindo o container do Ollama..."
podman run -d --name ollama \
  -p 11434:11434 \
  -v ollama-data:/root/.ollama \
  docker.io/ollama/ollama

echo "⏬ Baixando o modelo LLaMA2..."
curl -s http://localhost:11434/api/pull -d '{"name": "llama2"}'

echo "🌐 Subindo a interface Web (Open WebUI)..."
podman run -d --name open-webui \
  -p 3000:8080 \
  -v open-webui-data:/app/backend/data \
  -e OLLAMA_API_BASE_URL=http://localhost:11434 \
  ghcr.io/open-webui/open-webui:main

echo ""
echo "✅ Tudo pronto!"
echo "➡️  Acesse a interface web em: http://localhost:3000"
echo "➡️  Teste a API diretamente em: http://localhost:11434"

