# OmniEQ — Features

Everything OmniEQ 1.0.0 does, grouped the way the window is. Where a feature depends on something you have to bring yourself (Peace's database, HeSuVi's profiles, a VST3-capable engine), it says so.

---

## The equalizer

| Feature | What it does |
|---|---|
| **Parametric bands** | Add as many bands as you need. Each has frequency, gain and Q, a filter-type badge and an on/off switch. |
| **Ten filter types** | Peaking (PK) · low shelf (LS) · high shelf (HS) · low shelf with Q (LSC) · high shelf with Q (HSC) · low-pass (LP) · high-pass (HP) · notch (NO) · band-pass (BP) · all-pass (AP). Exactly Equalizer APO's own set. |
| **Graphic EQ mode** | Switch any channel to a graphic equalizer (`GraphicEQ:` under the hood). Your parametric filters are *parked* in the config as comments and come back when you switch back — nothing is deleted. |
| **Preamp** | −30 … +30 dB, on a slider with a scale, per channel. |
| **Channels** | Edit *All* channels together or Left, Right, Center, Subwoofer, Left/Right rear, Left/Right side individually. Nine speaker positions, glyph-labelled. |
| **Per device** | Configurations are written per output device (`Device:` line). Choose the endpoint from the Device panel; OmniEQ shows which one is the Windows default. |
| **Automatic preset switching** | Assign a preset to a device: when Windows switches your output (dock, headset, HDMI), OmniEQ loads the matching preset. Nothing swaps while a dialog is open. |
| **Balance** | Left ↔ right, with a centre detent. |
| **Delay** | Per channel, in milliseconds. |
| **Clipping guard** | Watches the sum of positive gains and pulls the preamp down automatically so Equalizer APO never clips. Switchable in Settings and in the Expert tools row. |
| **Curve tools** | Flatten (all to 0 dB), Expand / Compress (scale all gains), Nudge all bands up/down 0.5 dB, Shift band gains left/right. |
| **Undo / redo** | Every curve edit, including graph drags, tool operations and preset loads. Ctrl+Z / Ctrl+Y (or Ctrl+Shift+Z), buttons in the tools row and in the title bar. |
| **A/B compare** | Hold the current curve as *A*, keep editing as *B*, flip between them at any time. |
| **Sets 1–4** | Four quick slots for whole curves. Click to compare, hold to store. |
| **Loudness compensation** | An equal-loudness contour (`LoudnessCorrection:`) with a reference level, for listening quietly without losing the bass. |
| **Headphone crossfeed** | Bleeds a low-passed part of each channel into the other, the way a room does. Amount and crossover frequency. Made for headphones. |
| **Graph** | The response curve is embedded in the Device panel and draggable — drag a point, the band follows. The **Graph** window shows the full response with grid, and the effective result including preamp and loudness. |
| **Tone test** | Sine sweep / test tones on the output device, to hear what a band actually does. |
| **Peak meter** | Live dBFS reading of the endpoint, as a segmented LED row plus a number, with near-clip and clip colours. Polls only while the window is visible. |
| **Engine status** | Reads Equalizer APO's own registration for the selected endpoint and says plainly whether it is hooked in — the tray dot turns orange when it is not. |
| **Effects & commands** | Per channel: VST2 plug-ins (`VSTPlugin:`) and any Equalizer APO command typed by hand, written after everything OmniEQ models. *VST3 hosting requires an Equalizer APO build with VST3 support; stock Equalizer APO supports VST2.* |

---

## OmniSurround — headphone surround

Headphone surround virtualisation: multi-channel (or stereo, upmixed) audio is folded to 7.1, each channel is convolved with an ear-specific impulse response, and the result is summed back to a binaural stereo pair. Sound is placed *around* you rather than inside your head.

| Feature | What it does |
|---|---|
| **The processing is OmniEQ's own** | OmniEQ generates the complete Equalizer APO processing chain (`omnisurround.txt`) itself. No separate program is involved once the move has run. |
| **Profile library** | 312 ear/room profiles (HRIRs) in two lists — 57 captured virtualisations and 255 research HRTF sets — with 44.1 kHz variants where they exist. **Taken over from an existing HeSuVi installation** — OmniEQ does not ship them. |
| **The window** | Five tabs, in the app's own look: *Virtualisation*, *Equalizer*, *Connection*, *Additional*, *About* — everything HeSuVi's own window offered. |
| **On / off** | One switch. Applies immediately. |
| **Profile selection** | Three chips — *Common* (the 57 captured virtualisations), *More* (255 research HRTF sets) and *Favourites* — with a search box and a description beside each entry. Both sample-rate variants are written; when a profile has no 44.1 kHz counterpart the window says so. |
| **Source format & upmix** | Treat the source as what it announces, or force stereo / 5.1. Stereo-to-all-positions spread and 5.1 remap are separate switches (the research profiles ask for the spread to be off). |
| **Speaker positions** | Three sliders — front (towards centre ↔ sides), sides (front ↔ rear), rear (narrower ↔ wider) — and a **3D-style layout view** of the listener with the eight positions around them: drag a speaker, its pair swings round the head, the slider follows. The routing is a constant-power blend, so a source keeps its loudness while it travels; at 0 the placement is HeSuVi's own. |
| **7.1 test** | One tone per position, L to SR, on the default output device. |
| **Levels** | Eight per-channel trims (L R C SUB RL RR SL SR) as a mixer strip, master, crossfeed master, LFE-to-centre. |
| **Speaker-group equalizers** | Front / sides / centre+LFE / back, each as Equalizer APO text — with the headphone-correction library one click away, so a measured curve lands on a group as itself. |
| **Output routing** | Front pair only, or the pair duplicated across all channels for endpoints that need it. Plus the file paths the processing uses, and the sample-rate rules, spelled out. |
| **Crossfeed** | On/off, crossover frequency, attenuation, delay (in samples), shelf, bass shelf, alternative method — the six values HeSuVi keeps in one line. |
| **Channel matrix** | A hand-edited routing matrix from HeSuVi is carried over as text and honoured; the window says so and offers to discard it in favour of the sliders. |
| **Move into OmniEQ…** | Copies the library and your settings, switches `config.txt` over *in place*, and only then — on a second, separate confirmation — offers to delete HeSuVi's folder. It refuses to delete unless the new processing is in place and the selected profile is present in OmniEQ's own copy. |
| **Headphone corrections** | 1 355 measured correction curves from ~190 brands (also from HeSuVi's library). Search, pick, apply — as a graphic-EQ curve, **as itself**, nothing fitted or resampled. |

---

## Presets

| Feature | What it does |
|---|---|
| **Preset store** | Save, rename, delete, search. Presets are plain Equalizer APO text — readable, diffable, portable. |
| **From Peace…** | Imports every `.peace` profile from an installed Peace, then offers Peace's own uninstaller (see [Migrating](MIGRATING.md)). |
| **AutoEQ file** | Import a curve exported by AutoEQ. |
| **AutoEQ database** | Browse thousands of AutoEQ equalisations by headphone. *Uses the compressed database Peace ships (`AutoEQCompressed5.7z`); if you never had Peace, use the AutoEQ file import instead.* |
| **Export / import config** | Move a configuration between machines as a file. |
| **Per-preset hotkeys** | Assign a global shortcut to any preset. |
| **Tray picker** | Switch presets from the tray icon without opening the window. |
| **Backup everything** | One JSON bundle with every preset, setting and rule; restore it on a fresh machine. |

---

## Desktop integration

| Feature | What it does |
|---|---|
| **Tray icon** | Live state dot: green (active), red (EQ off), orange (engine not registered). Menu with EQ on/off, presets, show, quit. |
| **Global hotkeys** | EQ on/off · preamp up/down · next/previous preset · show the window. Configurable in Settings. |
| **Volume & mute** | Slider and MUTE for the selected endpoint; follows changes made elsewhere. |
| **Set as default** | Make the selected endpoint the Windows default output. |
| **Taskbar button** | Show or hide OmniEQ's taskbar button. |
| **Start with Windows**, **start to tray**, **Esc to tray**, single instance. |
| **Lite / Expert** | Lite hides the tools row, per-band type badges and the advanced panel rows. Expert shows everything. |
| **Text scale** | 0.8× … 1.6×, live. |
| **Theme** | Follows Windows light/dark automatically. Frameless window with the Omni design language; per-monitor DPI, including dragging between differently scaled monitors. |
| **Languages** | English, Deutsch, Español, Français, Română — 513 strings each, verified on screen. |
| **Help** | Bundled manual (PDF) one click from the title bar. |
| **Save diagnostics…** | Writes one text file with versions, the Equalizer APO path and registration, the selected device, the generated config files and your settings — for a bug report. Nothing is sent anywhere; your account name and profile paths are replaced with placeholders. |

---

## Under the hood — why it is safe to use every day

- **Atomic writes.** Every config file is written to a temp file and renamed into place; a crash mid-write cannot leave Equalizer APO with a half file.
- **Backup on first run.** Your `config.txt` is copied to `configbeforeOmniEQ.txt` before OmniEQ ever touches it.
- **Unknown lines survive.** Commands OmniEQ does not model are carried through byte for byte.
- **Debounced writes.** A slider drag becomes one write, not fifty.
- **No threads, no network.** All COM is single-threaded on the GUI thread; there is no code that could send anything anywhere.
- **Measured.** ~450 ms to a visible window, 0.03 % of one core hidden, no growth in memory, handles or GDI over a 14-minute soak.

---

## What OmniEQ deliberately does not do

- It does **not** install, register, repair or replace Equalizer APO. That is the engine's job and its own installer does it well.
- It does **not** ship HeSuVi's profile library or Peace's AutoEQ database. Both are taken over from installations you already have.
- It does **not** phone home, check for updates online, or collect anything.
