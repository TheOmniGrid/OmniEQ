# Getting started

## 1. Before you install

OmniEQ controls **Equalizer APO**. If Equalizer APO is not installed and registered on the output device you use, OmniEQ has nothing to control.

1. Install [Equalizer APO](https://equalizerapo.com/) (1.2.1 or newer). During its setup, tick the output device(s) you want to equalise — headphones, speakers, USB DAC. Reboot when it asks.
2. Nothing else to install: the Microsoft Visual C++ runtime ships next to `omnieq.exe` in both builds.

## 2. Install OmniEQ

You have two builds. Both are identical inside; pick the one that suits you.

**Installer — `OmniEQSetup.exe`**
Installs into your user profile (`%LOCALAPPDATA%\Programs\OmniEQ`), no administrator rights needed. Creates a Start-menu group, an optional desktop shortcut and an entry in *Apps & features* for clean removal. Offers to start OmniEQ with Windows.

**Portable — `OmniEQ-1.0.0-portable-win64.zip`**
Unzip anywhere and run `omnieq.exe`. Settings still live in your user profile (registry and `%APPDATA%\OmniEQ`), so the folder itself stays clean.

## 3. First run

OmniEQ looks in Equalizer APO's config folder (`C:\Program Files\EqualizerAPO\config`) and:

- copies your `config.txt` to `configbeforeOmniEQ.txt` — your way back, kept forever;
- creates its own `omnieq.txt` next to it;
- shows the main window with 13 flat bands, the way Peace does.

**Nothing is active yet.** OmniEQ writes its file but Equalizer APO is not reading it until you activate.

## 4. Activate

Click **Activate** in the top-right of the window. OmniEQ adds `Include: omnieq.txt` to `config.txt`, and Equalizer APO starts applying your curve at once — no restart, no re-registration.

The button turns green, the tray dot turns green. **To tray** hides the window; OmniEQ keeps running.

If the tray dot is **orange**, Equalizer APO is not registered on the selected device. Run Equalizer APO's own *Configurator* and tick the device.

## 5. Daily use

- Drag a **slider** or type into a gain field. Changes reach the engine within ~100 ms.
- **Preamp** on top; the clipping guard (Settings) can manage it for you.
- **Presets** panel: *Save as…* stores the current curve; double-click loads one. *From Peace…* imports your Peace library.
- **Sets 1–4**: click to load, hold to store — for quick comparisons.
- **Undo** everything with Ctrl+Z.
- The **Device** panel shows the endpoint, its volume, the peak meter, the embedded response curve, and three menus: *Curve* (import/export, AutoEQ, headphone corrections), *Sound* (loudness, crossfeed, OmniSurround) and *Backup*.
- **Lite / Expert** in Settings hides or shows the tools row and the advanced rows.

## 6. Coming from Peace or HeSuVi

See [Migrating](MIGRATING.md). Short version: *Presets › From Peace…* and *Sound › OmniSurround… › Additional › Move into OmniEQ…* — each copies first, then offers removal separately.

## 7. Uninstalling

*Apps & features › OmniEQ*, or `Uninstall OmniEQ.exe` in the install folder. Your presets and settings are offered to be kept or removed. `omnieq.txt` and the `Include:` line are removed from Equalizer APO's config; `configbeforeOmniEQ.txt` stays so you can restore the original by hand if you ever want to.

Portable build: delete the folder. To remove settings, delete `%APPDATA%\OmniEQ` and `%LOCALAPPDATA%\OmniEQ` and the registry key `HKCU\Software\OmniEQ`.
