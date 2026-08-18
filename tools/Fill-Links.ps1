# Fill-Links.ps1 -- setzt die Platzhalter in allen Texten dieses Repos auf die echten Werte.
#
# Jeder Platzhalter steht als %%NAME%% im Text, damit ein vergessener sofort auffaellt (und weil
# GitHub ihn genau so anzeigt, wenn er vergessen wurde). Das Skript ersetzt sie in einem Durchgang
# und meldet danach, ob noch einer uebrig ist.
#
#   pwsh -File tools\Fill-Links.ps1 -GitHubUser meinname -PatreonUrl https://patreon.com/c/x `
#        -KofiUrl https://ko-fi.com/x -Email mail@example.com -Author "Vorname Nachname" -Country Austria
[CmdletBinding()]
param(
    [Parameter(Mandatory)][string]$GitHubUser,
    [Parameter(Mandatory)][string]$PatreonUrl,
    [Parameter(Mandatory)][string]$KofiUrl,
    [Parameter(Mandatory)][string]$Email,
    [Parameter(Mandatory)][string]$Author,
    [Parameter(Mandatory)][string]$Country,
    [string]$ReleaseDate = (Get-Date -Format 'yyyy-MM-dd'),
    [string]$Year = (Get-Date -Format 'yyyy')
)
$ErrorActionPreference = 'Stop'
$root = Resolve-Path (Join-Path $PSScriptRoot '..')

# Handles fuer die Badges: das letzte Pfadstueck der URL ("https://patreon.com/c/omnivex" -> "omnivex").
function Handle([string]$url) { return ($url.TrimEnd('/') -split '/')[-1] }

$map = [ordered]@{
    '%%GITHUB_USER%%'    = $GitHubUser
    '%%PATREON_URL%%'    = $PatreonUrl
    '%%PATREON_HANDLE%%' = (Handle $PatreonUrl)
    '%%KOFI_URL%%'       = $KofiUrl
    '%%KOFI_HANDLE%%'    = (Handle $KofiUrl)
    '%%CONTACT_EMAIL%%'  = $Email
    '%%AUTHOR_NAME%%'    = $Author
    '%%COUNTRY%%'        = $Country
    '%%RELEASE_DATE%%'   = $ReleaseDate
    '%%YEAR%%'           = $Year
}

$files = Get-ChildItem $root -Recurse -File -Include *.md,*.yml,*.yaml,*.txt | Where-Object { $_.FullName -notmatch '\\\.git\\' }
$touched = 0
foreach ($f in $files) {
    $c = Get-Content $f.FullName -Raw
    $o = $c
    foreach ($k in $map.Keys) { $c = $c.Replace($k, [string]$map[$k]) }
    if ($c -ne $o) { Set-Content $f.FullName $c -NoNewline -Encoding UTF8; $touched++; Write-Host ("  {0}" -f $f.FullName.Substring($root.Path.Length + 1)) }
}
Write-Host ("`n{0} Datei(en) geaendert." -f $touched)

$left = $files | ForEach-Object { Select-String -Path $_.FullName -Pattern '%%[A-Z_]+%%' -AllMatches } | ForEach-Object { $_.Matches.Value } | Sort-Object -Unique
if ($left) { Write-Host ("Noch offen: " + ($left -join ', ')) -ForegroundColor Yellow } else { Write-Host "Kein Platzhalter mehr uebrig." -ForegroundColor Green }
