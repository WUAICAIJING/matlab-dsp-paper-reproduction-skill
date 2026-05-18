$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills\matlab-dsp-paper-reproduction"
$target = Join-Path $env:USERPROFILE ".codex\skills\matlab-dsp-paper-reproduction"

if (-not (Test-Path $source)) {
    throw "Skill source not found: $source"
}

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
Copy-Item -Recurse -Force -Path $source -Destination $target

Write-Host "Installed matlab-dsp-paper-reproduction to $target"
