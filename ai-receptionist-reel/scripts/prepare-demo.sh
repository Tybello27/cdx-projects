#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INPUT="$PROJECT_DIR/assets/audio/demo/real-ai-receptionist-call.wav"
NORMALIZED="$PROJECT_DIR/assets/audio/demo/processed-call.wav"

if [[ ! -f "$INPUT" ]]; then
  echo "Missing private demo recording: $INPUT" >&2
  exit 1
fi

ffmpeg -y -i "$INPUT" -af "loudnorm=I=-16:LRA=8:TP=-1.5" -ar 48000 -ac 1 "$NORMALIZED"

export HYPERFRAMES_WHISPER_PATH="/home/agent/.cache/hyperframes/whisper/whisper.cpp/build/bin/whisper-cli"
export HYPERFRAMES_BROWSER_PATH="/usr/bin/chromium"
cd "$PROJECT_DIR"
npx --yes hyperframes@0.8.192 transcribe "$NORMALIZED" --engine whisper --model small.en --language en --to vtt --output subtitles/demo-auto.vtt

echo "Review the transcript against the audio and manually verify customer/AI speaker turns before using it."
