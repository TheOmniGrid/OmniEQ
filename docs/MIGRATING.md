# Migrating from Peace and HeSuVi

Both migrations follow the same rule: **copy first, switch second, remove last — and removal is a separate click you can decline.** Nothing is deleted before it has been copied and checked.

---

## From Peace

Peace installs *into* Equalizer APO's config folder, next to `config.txt`. That is why OmniEQ never deletes a Peace file itself — it lets Peace's own uninstaller do it, and then checks the damage.

### What happens when you click *Presets › From Peace…*

1. **Import.** Every `.peace` profile in the config folder is read and saved as an OmniEQ preset under the same name. Profiles already present are skipped, unreadable ones are listed. Your Peace files are not touched.
2. **Offer.** A dialog explains the next steps and asks whether to proceed. Say *No* and everything stays as it is — Peace and OmniEQ can coexist indefinitely.
3. **Backup.** All `.peace` files plus `peace.txt` and `peace.ini` are copied to `%APPDATA%\OmniEQ\OmniEQ\peace-backup`. Existing backup files are never overwritten.
4. **Peace's own uninstaller** (`PeaceSetup.exe`, from its registered uninstall entry) is started. Windows will ask for administrator confirmation — that is Peace's uninstaller asking, not OmniEQ. Let it finish.
5. **Repair.** Click *OK* in OmniEQ. It compares `config.txt` with what it said before and puts back any `Include:` line the uninstaller removed — for instance the OmniSurround line.

Afterwards `PeaceSetup.exe` itself may still be in the folder: an uninstaller cannot delete the file it is running from. It is inert; delete it whenever you like.

### Undo

Peace's uninstaller removes Peace. To get it back, reinstall Peace; your profiles are in the backup folder above and in OmniEQ's preset store.

---

## From HeSuVi

HeSuVi is 2 000 files, most of them impulse responses, plus a program that generates an Equalizer APO script. OmniEQ generates that script itself and takes over the library.

### What happens when you click *Sound › OmniSurround › Move into OmniEQ…*

1. **Survey.** OmniEQ counts the profiles and correction curves and shows what will be copied and how much space it takes (about 30 MB).
2. **Copy.** The impulse-response library (48 kHz, 44.1 kHz and the extended set), the ~1 355 headphone-correction curves with their brand folders, and the attribution file are copied to `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround`. Files already there with the same size are not rewritten — one of them may be the one Equalizer APO is convolving with at that moment. A progress bar shows the copy.
3. **Settings.** Your current HeSuVi settings — profile, on/off, crossfeed, levels, LFE, output mode, channel matrix, group EQs — are read from HeSuVi's files and stored in `settings.json` next to the library.
4. **Stage.** OmniEQ writes `omnisurround.txt` into Equalizer APO's config folder — the complete processing chain, pointing at OmniEQ's own copies of the profiles.
5. **Switch.** In `config.txt`, the line `Include: HeSuVi\hesuvi.txt` is **replaced in place** by `Include: omnisurround.txt`. Same position, so the surround stage keeps its place relative to the equalizer. A copy of `config.txt` as it was is saved as `config.txt.before-omnisurround`.

At this point HeSuVi's folder is still there, untouched. Listen. Everything should sound exactly as before.

6. **Remove — later, separately.** The panel now shows *Remove the old engine…*. It asks once more, names the folder and its size, and deletes it. It **refuses** unless `omnisurround.txt` exists and the profile you have selected is present in OmniEQ's own library.

### What is carried over

Everything HeSuVi could set: profile (both sample-rate variants), on/off, all six crossfeed values, eight channel trims, master, crossfeed master, LFE-to-centre, output connect mode, the channel matrix and the four speaker-group equalizers. The last two are carried as HeSuVi's own text, unrounded.

### What is deliberately not carried over

- HeSuVi's per-device gate (`device=""` — "every device") — OmniEQ already chooses the endpoint.
- HeSuVi's branch for one specific DAC's multi-connection layout.

### Undo

Before you delete HeSuVi's folder: restore `config.txt.before-omnisurround` over `config.txt` and HeSuVi is back in charge. After you delete the folder, that file alone is not enough — reinstall HeSuVi, then restore it.

---

## Where things live afterwards

| | Path |
|---|---|
| Presets | `%APPDATA%\OmniEQ\OmniEQ\presets\` — one `.txt` per preset, plain Equalizer APO text |
| Peace backup | `%APPDATA%\OmniEQ\OmniEQ\peace-backup\` |
| Surround library & settings | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\` |
| Your equalizer | `C:\Program Files\EqualizerAPO\config\omnieq.txt` |
| Your surround stage | `C:\Program Files\EqualizerAPO\config\omnisurround.txt` |
| Original `config.txt` | `C:\Program Files\EqualizerAPO\config\configbeforeOmniEQ.txt` |
| Settings | `HKCU\Software\OmniEQ\OmniEQ` |
