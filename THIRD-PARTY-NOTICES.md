# Third-party notices and credits

OmniEQ is proprietary software, but it stands on other people's work. This file lists what is *included*, what OmniEQ *works with*, and what it can *import from your own installations* — with the licence that applies to each.

---

## Included in OmniEQ

### Qt 6 — LGPL v3

OmniEQ is built with the [Qt framework](https://www.qt.io/) (version 6.10) and is **dynamically linked** against these libraries, which ship next to `omnieq.exe`:

`Qt6Core.dll`, `Qt6Gui.dll`, `Qt6Widgets.dll`, `Qt6Network.dll`, `platforms\qwindows.dll`, `styles\qmodernwindowsstyle.dll`, `icuuc.dll`

Qt is licensed under the **GNU Lesser General Public License version 3** (LGPL-3.0). A copy of the LGPL v3 is at <https://www.gnu.org/licenses/lgpl-3.0.html>. In accordance with the LGPL:

- You may **replace** the Qt libraries shipped with OmniEQ with your own build of the same or a compatible version; because linking is dynamic, no relinking of `omnieq.exe` is required.
- Qt's complete corresponding **source code** is available from the Qt Project at <https://download.qt.io/official_releases/qt/6.10/> and <https://code.qt.io/>. If you cannot obtain it there, write to %%CONTACT_EMAIL%% and the Author will supply it at no more than the cost of the medium.
- Nothing in OmniEQ's licence restricts the rights the LGPL grants you with respect to Qt.

Qt is © The Qt Company Ltd and other contributors.

### miniz — MIT

The installer (`OmniEQSetup.exe`) embeds [miniz](https://github.com/richgel999/miniz) 3.1.2 to extract its payload.

```
Copyright 2013-2014 RAD Game Tools and Valve Software
Copyright 2010-2014 Rich Geldreich and Tenacious Software LLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### Microsoft Visual C++ Runtime

OmniEQ requires the Microsoft Visual C++ 2015–2022 Redistributable (x64), which is not included and is distributed by Microsoft under its own terms.

### Fonts

OmniEQ uses the system UI font (Segoe UI on Windows). No fonts are bundled.

---

## Works alongside (not included)

### Equalizer APO — GPL v2

[Equalizer APO](https://sourceforge.net/projects/equalizerapo/) by Jonas Thedering is the audio engine OmniEQ controls. It is a separate program under the GNU GPL v2. OmniEQ does not link against it, include it or modify it; it writes configuration files in Equalizer APO's own documented format. Install it from its own site.

### Peace Equalizer

[Peace](https://sourceforge.net/projects/peace-equalizer-apo-extension/) by Peter Verbeek is a separate program. OmniEQ can read its `.peace` preset files and, if you ask, start Peace's own uninstaller. OmniEQ does not include any part of Peace.

### HeSuVi

[HeSuVi](https://sourceforge.net/projects/hesuvi/) is a separate program that generates headphone-surround configurations for Equalizer APO. OmniEQ's **OmniSurround** generates its own configuration and, if you ask, takes over the profile library from an existing HeSuVi installation (see below). OmniEQ does not include any part of HeSuVi.

**Attribution.** OmniSurround's processing chain — the upmix, the fourteen-channel split, the convolution and the mix-down — reproduces the signal flow HeSuVi established for Equalizer APO, and its default mixing coefficients were taken from the configuration HeSuVi generates. The Author gratefully acknowledges HeSuVi's design; the arrangement is HeSuVi's, the implementation is OmniEQ's.

### AutoEQ — MIT

[AutoEQ](https://github.com/jaakkopasanen/AutoEq) by Jaakko Pasanen provides headphone equalisation results under the MIT licence. OmniEQ can import AutoEQ files you export yourself, and can browse the compressed AutoEQ database that Peace ships (`AutoEQCompressed5.7z`) if it is present in your Equalizer APO folder. OmniEQ does not include the database.

---

## Imported from your own installations (never shipped by OmniEQ)

When you use the migration features, OmniEQ copies files **from installations you already have** into your own user profile. The Author does not supply these files, and their original terms continue to apply to you:

| What | From | To |
|---|---|---|
| Presets (`*.peace`, `peace.txt`, `peace.ini`) | your Peace installation | `%APPDATA%\OmniEQ\OmniEQ\` |
| Impulse responses (`hrir\*.wav`, `hrir\44\`, `hrir\more\`) and `info.csv` | your HeSuVi installation | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\hrir\` |
| Headphone-correction curves (`eq\<brand>\*.txt`) | your HeSuVi installation | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\correction\` |

The extended impulse-response set (`hrir\more`) originates from several published HRTF databases whose authors ask to be cited; HeSuVi ships that information in `info.csv`, and OmniEQ **copies that file along with the profiles** so the attribution stays with the data.

---

## Trademarks

Windows is a trademark of Microsoft Corporation. Qt is a trademark of The Qt Company Ltd. Equalizer APO, Peace, HeSuVi and AutoEQ are the names of their respective projects. OmniEQ, OmniSurround and OmniVex are names used by %%AUTHOR_NAME%%. No affiliation or endorsement is implied.
