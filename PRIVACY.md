# Privacy

**OmniEQ does not collect, store, transmit or share any personal data. It cannot: it contains no networking code.**

That sentence is checkable, and it was checked before this file was written: the source of OmniEQ 1.0.0 contains no HTTP client, no socket, no update checker, no crash reporter and no analytics of any kind. The only "open a URL" calls in the program open your local manual (a PDF next to the executable) and the Windows Sound settings page.

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

%%CONTACT_EMAIL%%
