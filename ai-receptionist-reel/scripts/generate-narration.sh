#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HF_PYTHON="$PROJECT_DIR/.venv/bin/python"
OUT_DIR="$PROJECT_DIR/assets/audio/narration"

mkdir -p "$OUT_DIR"
export HYPERFRAMES_PYTHON="$HF_PYTHON"
export HYPERFRAMES_BROWSER_PATH="/usr/bin/chromium"

cd "$PROJECT_DIR"
npx --yes hyperframes@0.8.192 tts "That missed call? It could have been your next booking." --voice af_heart --output "$OUT_DIR/scene-01-hook.wav"
npx --yes hyperframes@0.8.192 tts "But when you're with a client, you can't always answer the phone." --voice af_heart --output "$OUT_DIR/scene-02-problem.wav"
npx --yes hyperframes@0.8.192 tts "So I built an AI receptionist. Listen to this." --voice af_heart --output "$OUT_DIR/scene-03-solution.wav"
npx --yes hyperframes@0.8.192 tts "Your team stays focused. Incoming calls still get answered. Want to hear the full demo? DM demo." --voice af_heart --output "$OUT_DIR/scene-05-cta.wav"
