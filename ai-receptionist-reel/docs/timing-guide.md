# Narration and demo timing guide

The review draft runs **36.20 seconds at 30 fps**.

| Scene | Global time | Narration time | Purpose |
| --- | ---: | ---: | --- |
| Hook | 0.00–4.70 | 0.55–2.961 | Incoming call becomes a missed call |
| Problem | 4.20–10.30 | 5.00–8.072 | Medspa professional stays focused on treatment |
| Solution | 9.70–14.30 | 10.05–13.143 | AI receptionist connects the call |
| Demo placeholder | 13.60–25.00 | none | Reserved for the authentic mixed call recording |
| CTA | 24.40–36.20 | 25.10–31.201 | Benefit statement and DM prompt |

Transitions overlap adjacent visual clips by 0.5–0.7 seconds. Narration never overlaps the demo slot.

## Audio mix

- Original ambient bed: volume 0.72 before and after the demo slot.
- Demo slot: ambient bed ducks to 0.28.
- Narration: full track volume; source WAVs are separate for replacement.
- Ring: 0.15–2.80 and deliberately cuts before the missed-call notification.
- Connection tone: 13.55–14.10.

## Demo integration

1. Put the private recording at `assets/audio/demo/real-ai-receptionist-call.wav` (Git-ignored).
2. Run `scripts/prepare-demo.sh`.
3. Review the generated transcript against the audio and identify each customer/AI turn manually.
4. Replace `subtitles/demo-placeholder.json` with verified word and speaker intervals.
5. Adjust Scene 4 and the later scene starts in `config/reel.json` and `index.html` if the call is not 10.8 seconds.
6. Replace `DEMO AUDIO PENDING` with `REAL AI RECEPTIONIST DEMO` only after the recording is present and verified.

## Caption synchronization

Narration captions use the exact supplied script and each scene WAV's measured duration. They are available in JSON, SRT, and VTT. The real call must use local Whisper word timestamps followed by a human speaker-turn review; Whisper alone is not treated as diarization.
