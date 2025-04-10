#!/bin/bash

echo "🛑 Parando containers..."
podman stop open-webui ollama

echo "🧹 Removendo containers..."
podman rm open-webui ollama

echo "🗑️  Removendo volumes..."
podman volume rm open-webui-data ollama-data

echo ""
echo "✅ Ambientes removidos com sucesso!"

