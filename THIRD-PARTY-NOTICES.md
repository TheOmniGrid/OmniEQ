# Third-party notices and credits

OmniEQ is proprietary software, but it stands on other people's work. This file lists what is *included*, what OmniEQ *works with*, and what it can *import from your own installations* — with the licence that applies to each.

---

## Why this isn't GPL

Peace and HeSuVi were the reference for what OmniEQ should do; they are not where its code came from. OmniEQ was written from scratch — no code from Peace or HeSuVi was copied, ported or translated. Copyright covers code, not the idea of a parametric equalizer or a headphone-surround panel, so matching another program's feature set is not the same thing as building a derivative work of it. OmniEQ's filter-response math comes from the public Audio EQ Cookbook, not from Peace's source.

Where OmniEQ talks to those programs at all, it does so through their documented file formats, not their code: it writes Equalizer APO's own config syntax (a separate, unmodified GPLv2 engine OmniEQ is never linked against), reads `.peace` presets as plain data, and parses the text lines HeSuVi itself writes into that config (`Eval:`, `Convolution:`, `Copy:` — see the Attribution note below) so it can detect an existing installation and offer to take it over. OmniEQ performs no audio processing of its own at all; every number it writes is executed by Equalizer APO's own engine, not by OmniEQ.

The only licence obligations OmniEQ actually carries are the ones listed below: Qt's LGPLv3 (satisfied by dynamic linking), miniz's MIT notice, and AutoEQ's MIT notice for the bundled data.

---

## Included in OmniEQ

### Qt 6 — LGPL v3

OmniEQ is built with the [Qt framework](https://www.qt.io/) (version 6.10) and is **dynamically linked** against these libraries, which ship next to `omnieq.exe`:

`Qt6Core.dll`, `Qt6Gui.dll`, `Qt6Widgets.dll`, `Qt6Network.dll`, `platforms\qwindows.dll`, `styles\qmodernwindowsstyle.dll`, `icuuc.dll`

Qt is licensed under the **GNU Lesser General Public License version 3** (LGPL-3.0). A copy of the LGPL v3 is at <https://www.gnu.org/licenses/lgpl-3.0.html>. In accordance with the LGPL:

- You may **replace** the Qt libraries shipped with OmniEQ with your own build of the same or a compatible version; because linking is dynamic, no relinking of `omnieq.exe` is required.
- Qt's complete corresponding **source code** is available from the Qt Project at <https://download.qt.io/official_releases/qt/6.10/> and <https://code.qt.io/>. If you cannot obtain it there, write to omnivex@theomnigrid.biz and the Author will supply it at no more than the cost of the medium.
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

### AutoEQ — MIT (redistributed with OmniEQ)

[AutoEQ](https://github.com/jaakkopasanen/AutoEq) by Jaakko Pasanen provides headphone equalisation results under the MIT licence (Copyright 2018–2022 Jaakko Pasanen). OmniEQ can import AutoEQ files you export yourself; it can browse the compressed AutoEQ database that Peace ships (`AutoEQCompressed5.7z`) if it is present in your Equalizer APO folder; and it can import, from files **you** download from the AutoEq project, both the parametric database (`results/**/… ParametricEQ.txt`) and the headphone-correction curves (`results/hesuvi.zip`). **OmniEQ redistributes two of AutoEq's published sets inside its installer**: the correction bundle (`results/hesuvi.zip`, 6 024 curves) and the parametric results (`… ParametricEQ.txt`, 8 850 equalisations from 23 measurement rigs). They sit in the `data` folder next to the program, together with AutoEq's MIT licence text, and are installed into your own profile only when you say so. The equalisations are derived works computed from measurements made by others — oratory1990, crinacle, Innerfidelity, Rtings, Kuulokenurkka and further measurers named in each file's own path; those measurements remain theirs. If you are one of them and would rather not be included, write to the address in `PRIVACY.md` and the next build will leave your set out. The imported files keep AutoEq's MIT terms, and the licence text is reproduced above with the other MIT components.

---

## Imported from your own installations (never shipped by OmniEQ)

When you use the migration features, OmniEQ copies files **from installations you already have** into your own user profile. The Author does not supply these files, and their original terms continue to apply to you:

| What | From | To |
|---|---|---|
| Presets (`*.peace`, `peace.txt`, `peace.ini`) | your Peace installation | `%APPDATA%\OmniEQ\OmniEQ\` |
| Impulse responses (`hrir\*.wav`, `hrir\44\`, `hrir\more\`) and `info.csv` | your HeSuVi installation | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\hrir\` |
| Headphone-correction curves (`eq\<brand>\*.txt`) | your HeSuVi installation, or an AutoEq `hesuvi.zip` / folder you downloaded | `%LOCALAPPDATA%\OmniEQ\OmniEQ\surround\correction\` |
| Parametric AutoEQ results (`… ParametricEQ.txt`) | an AutoEq `results` folder you downloaded | `%LOCALAPPDATA%\OmniEQ\OmniEQ\autoeq\` |

The extended impulse-response set (`hrir\more`) originates from several published HRTF databases whose authors ask to be cited; HeSuVi ships that information in `info.csv`, and OmniEQ **copies that file along with the profiles** so the attribution stays with the data.

---

## Trademarks

Windows is a trademark of Microsoft Corporation. Qt is a trademark of The Qt Company Ltd. Equalizer APO, Peace, HeSuVi and AutoEQ are the names of their respective projects. OmniEQ, OmniSurround and OmniVex are names used by OmniVex. No affiliation or endorsement is implied.
