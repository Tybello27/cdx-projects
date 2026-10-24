# AI Receptionist Instagram Reel

A reusable 1080×1920 HyperFrames motion-graphics system for promoting an AI receptionist to medspas and other beauty businesses.

The current output is intentionally a **review draft**: the real receptionist call has not been supplied, so Scene 4 is labeled `DEMO AUDIO PENDING`. No synthetic customer or receptionist dialogue is used.

## Quick start

Requirements: Node.js 22+, npm, FFmpeg/FFprobe, Chromium, Python 3.8+, and the project `.venv` described below.

```bash
cd /workspace/cdx-projects/ai-receptionist-reel
npm run doctor
npm run check
npm run dev
```

The persistent agent-safe preview command is:

```bash
HYPERFRAMES_BROWSER_PATH=/usr/bin/chromium npx --yes hyperframes@0.8.192 preview --background
```

Render the MP4:

```bash
npm run render -- --output renders/ai-receptionist-medspa-draft.mp4 --fps 30 --quality high
```

## Project layout

- `index.html` — root timing, audio tracks, and scene transitions
- `compositions/` — independently editable scene compositions
- `config/reel.json` — brand, niche, scene timing, CTA, and audio paths
- `assets/audio/narration/` — separate Kokoro narration WAVs
- `assets/audio/music/` — original FFmpeg-generated ambient bed
- `assets/audio/sfx/` — original FFmpeg-generated interface sounds
- `subtitles/` — reusable JSON, SRT, and VTT caption data
- `scripts/` — narration regeneration and real-demo preparation
- `docs/` — timing, licensing, and production notes
- `DESIGN.md` — visual and motion system

## Modify the brand

Edit `config/reel.json` first, then apply the same values in scene CSS. The primary palette is warm ivory `#F5F0E9`, forest green `#17251F`, emerald `#008C69`, and sparing burgundy `#782A3B`. `DESIGN.md` is the visual source of truth.

## Change the niche

Update `niche`, headline copy, and interface labels in `config/reel.json`, then edit the relevant scene composition. Scene 2 contains the code-generated medspa illustration; replace its treatment details for nail salons, hair salons, lash artists, or barbershops while retaining its layout and transitions.

## Generate Kokoro narration

Create the local environment once:

```bash
python3 -m venv .venv
.venv/bin/python -m pip install kokoro-onnx soundfile cmake
```

HyperFrames caches Kokoro model weights outside Git at `~/.cache/hyperframes/tts/`. Regenerate the four source files with:

```bash
scripts/generate-narration.sh
```

The selected narrator is `af_heart`, chosen from tests of `af_heart`, `af_nova`, and `af_sky`. Change the `--voice` value in the script to replace it. Keep narration in scene-specific files so one sentence can be regenerated without rebuilding all audio.

## Generate captions with Whisper

HyperFrames builds `whisper.cpp` under `~/.cache/hyperframes/whisper/` and uses a pinned, checksum-verified model. The current network configuration must permit `huggingface.co` and its model-delivery hosts.

Narration captions use the exact provided script and measured WAV durations, so unnecessary re-transcription is avoided. For a real call, use the preparation script and then listen through the result:

```bash
scripts/prepare-demo.sh
```

Whisper does not provide reliable speaker diarization by itself. Manually confirm every `CUSTOMER — ME` and `AI RECEPTIONIST` interval before animating the dual waveforms.

## Add the real AI receptionist call

1. Save the private recording as `assets/audio/demo/real-ai-receptionist-call.wav`.
2. Run `scripts/prepare-demo.sh` to normalize and transcribe it.
3. Correct the transcript against the audio.
4. Add verified speaker turns to `subtitles/demo-placeholder.json`.
5. Replace Scene 4's placeholder text and connect the processed audio in `index.html`.
6. Adjust Scene 4 duration and all later start times if the recording is not 10.8 seconds.
7. Change the label to `REAL AI RECEPTIONIST DEMO` only after verification.

Private recordings, automatic demo transcripts, model weights, and MP4 renders are Git-ignored.

## Replace the medspa visual

The current treatment scene is original CSS illustration and is commercially unencumbered by stock-media licenses. To use licensed footage, add a muted `<video>` visual clip and a separate audio track only when needed. Preserve the safe caption region and document the asset license in `docs/ASSET_LICENSES.md`.

## Waveform synchronization

The draft waveforms are bounded, deterministic GSAP animations. When demo audio arrives, extract amplitude data offline, map verified speaker intervals to the customer and AI waveform groups, and keep the inactive speaker subdued. Do not infer speakers from Whisper text alone.

## Produce another Reel

Duplicate the project directory, update `config/reel.json`, regenerate only changed narration segments, edit the five scene files, then run:

```bash
npm run check
npx --yes hyperframes@0.8.192 snapshot --at 1.5,6.5,11.5,18,29
npm run render -- --output renders/new-reel.mp4 --fps 30 --quality high
```

Always inspect the snapshots and verify the MP4 with FFprobe before publishing.
