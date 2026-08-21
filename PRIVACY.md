# Privacy

**OmniEQ does not collect, store, transmit or share any personal data — and it makes no network connection at all unless you switch on one clearly labelled option that is off until you switch it on.**

That option is **Keep AutoEq curves up to date**. With it off — which is how OmniEQ arrives, and how it stays unless you decide otherwise — the program opens no socket of any kind. Everything works without it: both AutoEq databases ship inside the installer, so a machine that never touches a network has all 6 024 correction curves and all 8 850 equalisations.

With it on, OmniEQ contacts exactly two addresses, at most once a week, while it is running:

| Address | What it asks | What it sends |
|---|---|---|
| `api.github.com` | whether AutoEq's public `results` folder has changed since the copy you have | an ordinary HTTPS GET with `User-Agent: OmniEQ/<version>` |
| `raw.githubusercontent.com` | the curve files that changed | the same |

That is the whole list. No identifier, no machine name, no account, no cookie, no telemetry, no crash reporting, and **no update check for OmniEQ itself** — the program never asks whether a newer OmniEQ exists. Any other host is refused before a byte is sent, and a redirect that leaves those two hosts aborts the request (`src/nethttp.cpp` is the only file in the program that touches a network at all — it is about a hundred lines, and it exists to be read).

If a check fails, nothing is retried and nothing is reported anywhere; Settings shows you the date and the reason in plain words.

## What OmniEQ writes, and where

Everything stays on your computer:

| Data | Where | Why |
|---|---|---|
| Your equalizer configuration | `C:\Program Files\EqualizerAPO\config\omnieq.txt` and `omnisurround.txt` | So Equalizer APO can read it |
| A copy of your original `config.txt` | `…\config\configbeforeOmniEQ.txt` | Your way back |
| Presets, Peace backup | `%APPDATA%\OmniEQ\OmniEQ\` | Yours to copy or delete |
| Surround library and settings | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\` | Copied from your own HeSuVi installation |
| Settings (language, hotkeys, window position, rules) | Registry, `HKCU\Software\OmniEQ` | Preferences |

None of it is read by anyone but you and OmniEQ.

## What OmniEQ reads

- Equalizer APO's configuration folder and its registry keys, to know which endpoint is registered.
- Windows' list of audio endpoints, their names, volume and peak level (through the public MMDevice / EndpointVolume APIs).
- Your Peace and HeSuVi folders, only when you start a migration.

## Third parties

There are none in the running program. Patreon, Ko-fi and GitHub — where you may have obtained OmniEQ or where you may report issues — have their own privacy policies; OmniEQ itself never talks to them.

## Uninstalling

The uninstaller offers to remove presets and settings. If you say no, they stay in the folders above until you delete them by hand.

## Contact

omnivex@theomnigrid.biz
