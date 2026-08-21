# FAQ & troubleshooting

### Is it really free?
OmniEQ is **donationware**: it is given to people who support the project on Patreon or Ko-fi. There is no other download, no trial and no store listing. Your support pays for the time; you get the installer, the portable build and updates.

### Does it work with the normal Equalizer APO?
Yes. Every command OmniEQ writes is stock Equalizer APO (1.2.1 or newer): `Filter`, `Preamp`, `GraphicEQ`, `Copy`, `Convolution`, `Delay`, `LoudnessCorrection`, `Eval`/`If`, `VSTPlugin`. The single exception is **VST3** hosting, which stock Equalizer APO does not have; that button writes `VST3Plugin:` and only does something on an engine build that understands it.

### Do I need Peace or HeSuVi installed?
No. OmniEQ works on its own. If you *have* them, OmniEQ can take over their libraries — Peace's presets and AutoEQ database, HeSuVi's surround profiles and headphone corrections — and then remove them. If you never had them, everything else works, and two of those libraries you can get without them anyway: **Curve › Import AutoEQ database folder…** and **Curve › Update corrections from AutoEq…** read the files the [AutoEq project](https://github.com/jaakkopasanen/AutoEq) publishes, which are newer and much larger than Peace's and HeSuVi's copies. Only HeSuVi's surround profiles still have to come from HeSuVi.

### How do I get the bigger AutoEQ databases?
You already have them: both ship inside the installer (6 024 correction curves, 8 850 equalisations) and the first start offers to set them up. You only need the steps below if you want to refresh them by hand instead of ticking **Keep AutoEq curves up to date**.

- **Corrections:** `results/hesuvi.zip` from the AutoEq repository, about 8 MB. Feed the zip straight to **Curve › Update corrections from AutoEq…**; it shows what would change before writing anything and keeps your old library in a `.bak` folder.
- **Parametric database:** AutoEq's `results` folder. The whole clone is large, so fetch only what is needed (about 30 MB):

  ```
  git clone --filter=blob:none --no-checkout --depth 1 https://github.com/jaakkopasanen/AutoEq
  cd AutoEq
  git sparse-checkout set --no-cone "/results/**/*ParametricEQ.txt"
  git checkout
  ```

  Then point **Curve › Import AutoEQ database folder…** at that folder.

### Can I keep Peace and OmniEQ side by side?
Yes. Import your Peace presets and decline the removal offer. Both write their own files; only one is included in `config.txt` at a time — OmniEQ's *Activate* button switches. Peace's *On/Off* would do the same the other way.

---

## Nothing changes when I move a slider

1. Is OmniEQ **Active** (green button, green tray dot)? If not, click *Activate*.
2. Is the tray dot **orange**? Then Equalizer APO is not registered on this output device. Open Equalizer APO's *Configurator* (in its Start-menu group), tick the device, reboot.
3. Is the right **device** selected in the Device panel? OmniEQ writes per device.
4. Is your player using **exclusive mode** (WASAPI exclusive, ASIO)? Equalizer APO cannot process exclusive-mode streams — that is by design of Windows, not something OmniEQ can change.

## The tray dot is orange although the Configurator says the device is registered

Windows keeps one registration per *endpoint*; some devices expose several (e.g. "Speakers" and "Headphones" on the same card, or a Bluetooth device with two). Select the endpoint that is actually playing. If it still shows orange, Equalizer APO's own *Benchmark* / *Configurator* is the authority — OmniEQ only reads what they write.

## Sound is distorted or clipping

Turn on **Prevent clipping automatically** in Settings — it pulls the preamp down by the sum of your positive gains. Or lower the preamp by hand.

## Surround sounds wrong after the move from HeSuVi

While HeSuVi's folder still exists: restore `config.txt.before-omnisurround` over `config.txt` — HeSuVi is back in charge instantly. Then please [open an issue](https://github.com/TheOmniGrid/OmniEQ/issues) with your profile name and settings; the processing chain is generated deterministically and can be compared line by line.

## Where are my presets?

`%APPDATA%\OmniEQ\OmniEQ\presets\`, one plain-text file per preset. Copy the folder to move them. Or use *Backup › Back up everything…* for one bundle with settings and rules included.

## The window is huge / tiny / half off-screen on my second monitor

OmniEQ handles per-monitor DPI, including dragging between monitors of different scale. If a window ends up misplaced after changing monitors, close it to the tray and reopen it. Text size is adjustable in Settings (0.8×–1.6×).

## Numbers show a comma instead of a dot ("-9,0 dB")

Number formatting follows your Windows *region* setting, not the UI language — the same way Windows itself does. It is cosmetic; the values written to Equalizer APO always use a dot.

## Does OmniEQ send anything anywhere?

No, not unless you ask it to. OmniEQ ships both AutoEq databases inside the installer and opens no socket at all until you tick **Keep AutoEq curves up to date**; with it on it contacts `api.github.com` and `raw.githubusercontent.com`, at most once a week, to fetch published curve files. There is still no update check for OmniEQ itself, no crash reporter and no analytics. See [PRIVACY.md](PRIVACY.md).

## My antivirus flags the installer / "could not be started from %TEMP%"

`OmniEQSetup.exe` is a small self-contained launcher: it unpacks the actual installer and its runtime into a temporary folder, runs it, and deletes the folder afterwards. Some antivirus products dislike programs starting from `%TEMP%`. Allow it once, or use the portable zip — same program, no installer.

## Can I install it for all users / with an MSI / silently?

Not in 1.0.0. The installer is per-user, into `%LOCALAPPDATA%\Programs\OmniEQ`. The portable zip works from any folder.

## How do I uninstall completely?

*Apps & features › OmniEQ*, or *Uninstall OmniEQ.exe*. It removes the program, the `Include:` line and `omnieq.txt` from Equalizer APO's config, and asks whether to keep or remove your presets and settings. `configbeforeOmniEQ.txt` is left in place on purpose — it is your original `config.txt`.

## I found a bug

[Open an issue](https://github.com/TheOmniGrid/OmniEQ/issues) with the bug template. The most useful things to include: your Equalizer APO version, whether the tray dot is green, and the contents of `omnieq.txt` (it is plain text and holds no personal data).
