# OmniEQ End-User Licence Agreement (Donationware)

**Version 1.0 — %%YEAR%%**
**Licensor:** %%AUTHOR_NAME%% ("the Author")
**Software:** OmniEQ, including OmniSurround, the installer, the portable build, the bundled manual and all updates the Author chooses to provide ("the Software")

> **Plain-language summary (not part of the agreement):** OmniEQ is given to supporters as a thank-you. You may install and use it on your own computers. You may not pass it on, sell it, or take it apart. It comes as it is, without a warranty. Nothing here limits the rights you have under the Qt LGPL licence or under the law of your country.

---

## 1. Donationware

1.1 The Software is **donationware**. The Author makes it available to people who support the project on Patreon, Ko-fi or through another channel the Author names. Support is voluntary; it does not buy the Software, and it does not create an obligation on the Author to provide any particular update, feature or support.

1.2 Access to the download is a courtesy extended to supporters. It may be changed or withdrawn for future versions at the Author's discretion. Versions you have already downloaded remain licensed under this agreement.

## 2. Licence grant

2.1 Subject to this agreement, the Author grants you a **personal, non-exclusive, non-transferable, non-sublicensable, revocable** licence to install and use the Software on computers you own or control, for your own personal or internal use.

2.2 You may make copies of the Software solely for backup and for installing it on your own computers.

## 3. Restrictions

You may **not**, and may not permit anyone else to:

a. distribute, publish, upload, share, sell, rent, lease, lend or otherwise make the Software or the download link available to any third party, whether or not for money — this includes re-uploading the installer or the portable build anywhere;
b. modify, adapt, translate or create derivative works of the Software;
c. reverse engineer, decompile, disassemble or otherwise attempt to derive the source code of the Software, **except to the extent that applicable law expressly permits this despite this restriction** (for example, for interoperability under Article 6 of Directive 2009/24/EC);
d. remove, alter or obscure any copyright, trademark or other proprietary notice;
e. use the Software's names, logos or artwork to suggest endorsement or affiliation.

## 4. Ownership

The Software is licensed, not sold. The Author retains all right, title and interest in it, including all copyright and other intellectual-property rights. **OmniEQ**, **OmniSurround** and **OmniVex** are names of the Author's projects.

## 5. Third-party components

5.1 The Software is dynamically linked against the **Qt framework**, which is licensed under the **GNU Lesser General Public License version 3**. Nothing in this agreement restricts the rights the LGPL grants you with respect to Qt, including the right to replace the Qt libraries shipped with the Software with your own build. See `THIRD-PARTY-NOTICES.md` for how to obtain Qt's source code.

5.2 The installer contains **miniz**, licensed under the MIT licence; its notice is reproduced in `THIRD-PARTY-NOTICES.md`.

5.3 The Software works with, but does not include, **Equalizer APO** (GNU GPL v2), **Peace** and **HeSuVi**, which are independent projects by their own authors and subject to their own licences. Libraries the Software can *import* from an existing Peace or HeSuVi installation (presets, the AutoEQ database, surround profiles, headphone-correction curves) are copied from your own installation into your own user profile; they are not supplied by the Author and remain subject to whatever terms you obtained them under.

## 6. What the Software does on your computer

The Software reads and writes files in Equalizer APO's configuration folder (by default `C:\Program Files\EqualizerAPO\config`), including `config.txt`, and stores its own presets and settings in your user profile and in the Windows registry under `HKCU\Software\OmniEQ`. On first run it copies your existing `config.txt` to `configbeforeOmniEQ.txt`. The optional migration features may — only after asking you and only after copying — start Peace's own uninstaller or delete HeSuVi's folder. **Keeping backups of your audio configuration is your responsibility.**

The Software collects no data and sends nothing to the Author or anyone else. It makes no network connection at all unless you switch on "Keep AutoEq curves up to date", which is off by default; with it on it contacts only `api.github.com` and `raw.githubusercontent.com` to fetch published headphone-correction files. See `PRIVACY.md`.

## 7. Updates and support

The Author may, but is not obliged to, provide updates. Support is best-effort, through the channels named in the project's documentation. There is no service level.

## 8. Disclaimer of warranty

**To the maximum extent permitted by applicable law, the Software is provided "as is" and "as available", without warranty of any kind**, express or implied, including any implied warranties of merchantability, fitness for a particular purpose and non-infringement. The Author does not warrant that the Software will be error-free, that it will work with every audio device or every version of Equalizer APO, or that it will meet your requirements.

## 9. Limitation of liability

**To the maximum extent permitted by applicable law**, the Author shall not be liable for any indirect, incidental, special, consequential or punitive damages, or for loss of data, profits, or audio configuration, arising out of or related to the Software, even if advised of the possibility. Nothing in this agreement excludes or limits liability for intent or gross negligence, for death or personal injury, or for any liability that cannot be excluded under the law that applies to you.

## 10. Termination

This licence ends automatically if you breach it. On termination you must stop using the Software and delete your copies. Sections 4, 5, 8, 9 and 11 survive termination.

## 11. General

11.1 This agreement is governed by the laws of **%%COUNTRY%%**, without regard to conflict-of-law rules. If you are a consumer, you also keep the protection of the mandatory consumer-protection provisions of the country you live in.

11.2 If any provision is held unenforceable, the rest remains in force.

11.3 This is the entire agreement between you and the Author concerning the Software and replaces any earlier understanding.

11.4 Contact: %%CONTACT_EMAIL%%

---

*Equalizer APO, Peace, HeSuVi, AutoEQ, Windows and Qt are names or trademarks of their respective owners. OmniEQ is not affiliated with or endorsed by any of them.*
