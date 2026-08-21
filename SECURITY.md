# Security

OmniEQ runs with your user's rights and edits text files in Equalizer APO's configuration folder. It talks to the network only if you switch on **Keep AutoEq curves up to date** (off by default), and then only to `api.github.com` and `raw.githubusercontent.com` over HTTPS — see [PRIVACY.md](PRIVACY.md). Its attack surface is small, but not zero: it parses configuration files, preset files and imported curves, and it can start Peace's uninstaller.

## Reporting

If you believe you have found a security issue — for example a crafted preset or `.peace` file that makes OmniEQ misbehave — please **do not open a public issue**. Write to **omnivex@theomnigrid.biz** with the subject `OmniEQ security`. Include what you did, what happened, and the file if you can. You will get an answer within a few days.

## Scope

In scope: `omnieq.exe`, `OmniEQSetup.exe`, the portable build, and the files they read and write.
Out of scope: Equalizer APO, Peace, HeSuVi, Windows, Qt — report those to their own projects.

## Supported versions

Only the latest release receives fixes.
