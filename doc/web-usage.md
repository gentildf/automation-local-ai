# 🌐 Using the Web Interface (Open WebUI)

This guide explains how to access and interact with the Open WebUI, a local interface to chat with your LLM (LLaMA2, Mistral, etc.) using Ollama.

---

## ✅ Requirements

- Podman installed and running
- The `start-ollama-ai.sh` script has been executed successfully
- Port `3000` is not blocked on your system

---

## 🧭 How to Access

After running:

```bash
./start-ollama-ai.sh
```

Open your browser and go to:

```
http://localhost:3000
```

You should see the **Open WebUI login/setup screen**.

---

## 👤 First-time Setup

1. Enter your full name
2. Enter a valid or fake email (it's local)
3. Set any password
4. Click `Create Admin Account`

This will create a local user on your WebUI instance.

---

## 💬 Chatting with the Model

Once logged in:

- You'll be redirected to the main chat screen
- Choose the model (ex: `llama2`) in the top menu
- Enter a prompt like:  
  _"Explain what AI is in simple terms."_

The model will respond locally via the Ollama backend.

---

## ⚠️ Troubleshooting

- If the page doesn’t load, verify Podman is running
- Make sure port `3000` is not used by other applications
- Check logs with:

```bash
podman logs open-webui
```

---

## 🔁 Stopping or Resetting

To stop and remove the environment:

```bash
./destroy-ollama-ai.sh
```

You can always restart it again with the start script.

---

## 🧠 All local, all private.

Everything runs on your machine. No cloud. No data sharing.