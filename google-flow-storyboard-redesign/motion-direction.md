# AI Receptionist Reel — Redesigned Motion Direction

## Reference synthesis

The references are strongest when they use movement as structure rather than decoration:

- Oversized type enters in short phrase units and becomes the transition mask.
- Layouts reset between light and dark canvases, creating rhythm without adding visual clutter.
- Flat interface elements use exact grids, tight crops, directional wipes, and restrained 2.5D perspective.
- Real-world footage works best as one narrative layer inside a designed composition—not as a full sequence of generated product shots.
- UI motion is staged in a clear order: state, action, result. Only the active state receives a highlight.
- Small pauses after a fast build make the message feel expensive and intentional.

The redesign applies those principles without copying any reference layout or distinctive sequence.

## Concept — “The Call Signal”

A single directional signal moves through the story. It begins as an emerald diagonal strip beneath the incoming call, becomes a burgundy missed-call row, turns into the edge of the treatment-room split, then resolves as the emerald connected state for Sophie. In later scenes it becomes waveform amplitude, selected form fields, parallel timeline bars, and finally the right-hand CTA strip.

This gives every transition a narrative function while keeping the visual language flat, graphic, and reproducible in After Effects.

Primary transition: editorial track wipe, 0.32–0.45s, `power3.inOut`.
Accent transition: oversized text mask, 0.45–0.55s, `expo.inOut`.
Target duration: approximately 35 seconds, adjustable to the chosen Retell excerpt.

## 01 — Incoming call hook

**Duration:** 3.2 seconds
**Hero frame:** `YOUR NEXT CLIENT IS CALLING.` with a realistic incoming-call card.

- **Camera:** 4% push-in with 12 px foreground/background parallax; the phone card rotates from -4° to -2°.
- **Typography:** words reveal in reading order through three horizontal masks; `CLIENT` draws as a 2 px outline before filling briefly on the ring accent.
- **UI motion:** the phone card rises from below with a firm `expo.out`; the answer control appears 4 frames before decline so the intended action reads first.
- **Transition:** the diagonal emerald signal expands upward and becomes the full ivory canvas of Scene 02.
- **Timing:** build 0.2–1.1s, breathe 1.1–2.65s, transition 2.65–3.2s.
- **Sound:** one clean ring, subtle tactile vibration, short low-frequency lift into the wipe.

## 02 — Missed-call impact

**Duration:** 2.6 seconds
**Hero frame:** `NO ANSWER.` plus a precise call-activity table.

- **Camera:** locked orthographic layout; a 1% scale hit occurs only when the burgundy row lands.
- **Typography:** `NO` arrives in 6 frames; `ANSWER.` follows from a left crop and stops without overshoot.
- **UI motion:** the missed row tracks in from the right, while the other call rows build from hairline dividers.
- **Transition:** the burgundy row stretches vertically, then splits into the treatment-room/forest two-column layout.
- **Timing:** build 0.12–0.85s, impact hold 0.85–2.1s, transition 2.1–2.6s.
- **Sound:** dry notification tick, muted impact, 4-frame silence after the row lands.

## 03 — Busy medspa owner

**Duration:** 4.3 seconds
**Hero frame:** treatment continues on the left while the unanswered call persists as a small burgundy status bar.

- **Camera:** 2.5D lateral move of 55 px; window, client, owner, and call bar travel at different rates. No handheld motion.
- **Typography:** `CLIENT FIRST.` reveals calmly; `HANDS BUSY / FOCUS HERE` stacks one phrase at a time in the right column.
- **Object motion:** the practitioner makes one small, believable treatment movement; the incoming-call bar advances from `00:06` to `00:09`.
- **Transition:** the call bar accelerates to the right and becomes the top status edge of Sophie’s card.
- **Timing:** build 0.2–1.35s, treatment action 1.0–3.65s, transition 3.8–4.3s.
- **Sound:** quiet treatment-room tone, soft tool/cloth detail, distant ring filtered behind the room ambience.

## 04 — AI receptionist solution

**Duration:** 3.6 seconds
**Hero frame:** `SOPHIE PICKS UP.` and a precise front-desk capability card.

- **Camera:** two large color panels move at different depth values; the capability card settles from a 3° Y rotation to flat.
- **Typography:** `SOPHIE` enters first; `PICKS UP.` replaces the previous burgundy state with emerald in a 7-frame masked reveal.
- **UI motion:** identity, live status, and the three functions enter in hierarchy order with 60 ms spacing. No floating cards.
- **Transition:** camera pushes directly into the Sophie identity row; its rectangular bounds become the call-demo stage.
- **Timing:** build 0.15–1.45s, capability read 1.45–3.05s, transition 3.05–3.6s.
- **Sound:** call-connect tone, three quiet UI confirmations, music opens slightly after connection.

## 05 — Real Retell call demo

**Duration:** 8 seconds in the storyboard; extend or trim to the approved recording excerpt.
**Hero frame:** two-channel call interface with customer and Sophie waveforms.

- **Camera:** almost locked, with one restrained 2% push over the whole scene.
- **Typography:** the verified transcript reveals by short phrases on actual speaker turns. No generated dialogue is shown.
- **Waveforms:** customer is soft gray/ivory; Sophie is emerald. The active speaker uses 35–100% bar height and full opacity. The inactive speaker releases to 18–28% height and 35–45% opacity over 120–180 ms.
- **Audio mapping:** precompute per-speaker RMS/amplitude from the real recording. Use a 60–90 ms attack, 140–220 ms release, and light temporal smoothing so bars respond to speech without nervous flicker. Speaker changes come from verified turn boundaries, not frequency guesses.
- **UI motion:** timer, progress line, speaker state, captions, and bars are code/AE-driven. The camera plate remains stable.
- **Transition:** the transcript box slides upward while its columns realign into the enquiry form in Scene 06.
- **Timing:** interface build 0.2–0.9s, real excerpt 0.9–7.45s, transition 7.45–8.0s.
- **Sound:** real call centered and clear; music ducks 8–10 dB and returns after the final turn.

## 06 — Treatment, preference, and contact collection

**Duration:** 4.8 seconds
**Hero frame:** a realistic enquiry record, explicitly marked `NOT BOOKED` and `NO LIVE CALENDAR`.

- **Camera:** form arrives with 3° perspective and settles to flat by 0.65s; no ambient drift afterward.
- **Typography:** `FROM QUESTION TO CONTEXT.` reveals as three fast editorial lines; `CONTEXT` receives the emerald state change.
- **UI motion:** treatment interest, appointment preference, and contact collection populate sequentially. This is shown as information gathered during the call, not a completed booking.
- **Transition:** form rows compress vertically into two parallel horizontal tracks.
- **Timing:** headline 0.12–0.8s, form groups 0.7–3.8s, read 3.8–4.3s, transition 4.3–4.8s.
- **Sound:** three restrained ticks tied to the three data groups; no success chime.

## 07 — Business benefit

**Duration:** 3.6 seconds
**Hero frame:** two parallel lanes—your team treating, Sophie handling the incoming enquiry.

- **Camera:** orthographic pullback of 3%, revealing both lanes as one system.
- **Typography:** `KEEP TREATING.` enters with weight; `CALLS STILL ANSWERED.` tracks in from the opposite direction in emerald.
- **Data motion:** the owner lane begins first; Sophie’s lane starts 6 frames later and extends farther, making parallel support immediately legible.
- **Transition:** the emerald Sophie track grows vertically into the right-side CTA strip.
- **Timing:** headline 0.15–0.85s, lanes 0.75–2.3s, benefit line 2.1–3.15s, transition 3.15–3.6s.
- **Sound:** paired soft pulses—human action first, AI response second—then a tonal lift.

## 08 — Comment “DEMO” CTA

**Duration:** 5 seconds; resolved composition stays unchanged for at least 3 seconds.
**Hero frame:** dominant `COMMENT “DEMO”`, supporting line, and `@buildwith_ty`.

- **Camera:** no drift after the first 1.3–1.6 seconds.
- **Typography:** question appears first; `COMMENT` follows through a left crop; `“DEMO”` lands 14% larger with a short 4-frame scale settle. No bounce.
- **Graphic motion:** the outlined comment icon draws on with trim paths; its three emerald dots arrive at 80 ms intervals, then stop.
- **Transition:** none. Hold for comprehension and interaction.
- **Timing:** build 0.2–1.55s, final locked CTA 1.55–5.0s.
- **Sound:** one confident arrival hit, three subtle comment ticks, music resolves underneath the static hold.

## Production notes

- Build typography, interface states, waveform bars, caption timing, dividers, and transitions as vector/code-driven layers.
- If live-action footage is used for Scene 03, generate or shoot only the treatment-room plate; composite the typography and call UI afterward.
- Maintain exact 9:16 framing at 1080×1920 and keep primary text inside a 70 px safe margin.
- The storyboard deliberately avoids claims that an appointment was booked, a reminder was sent, or an automatic comment reply is connected.
