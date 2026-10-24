# Final Verification

Verified on 2026-10-24 in the Codex Cloud environment.

## Render

- Output: `renders/ai-receptionist-medspa-draft.mp4`
- Duration: 37.200 seconds
- Canvas: 1080×1920 (9:16)
- Video: H.264 High, yuv420p, 30 fps
- Audio: AAC-LC, 48 kHz, stereo
- File size: 5,176,811 bytes
- Mean audio level: -25.4 dB
- Peak audio level: -5.5 dB
- Black-frame scan: no intervals detected at a 0.2-second threshold

## HyperFrames checks

`npm run check` completed successfully with:

- Lint: 0 errors, 0 warnings
- Runtime: 0 errors
- Layout: 0 errors, 0 warnings
- Motion: 0 errors
- Contrast: 82/82 text elements pass WCAG AA

The remaining craft notices are non-blocking: intentionally small interface metadata and a few exact narration caption phrases that exceed the generic reading-speed heuristic.

## Editorial status

This is a review draft, not a fabricated call demonstration. The real AI receptionist recording was not supplied, so Scene 4 remains clearly labeled `DEMO AUDIO PENDING`. Narration captions use the exact approved script and measured Kokoro WAV timing. The Whisper executable is built, but the pinned model download requires the proposed environment network additions before a real call can be transcribed.

The final scene asks viewers to comment `DEMO` so `@buildwith_ty` can send the full recording. No automated comment-response integration is represented or implied.

## Runtime versions

- Node.js: 24.19.0
- npm: 11.9.0
- FFmpeg/FFprobe: 7.1.5
- Chromium: 154.0.8037.57
- HyperFrames: 0.8.192
- Kokoro ONNX: 0.6.1
