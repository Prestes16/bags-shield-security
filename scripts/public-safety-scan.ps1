param(
  [string]$Root = "."
)

# Fail-closed: qualquer erro quebra a execução (sem "OK" falso)
$ErrorActionPreference = "Stop"

$forbiddenRegex = @(
  '(?i)\bchatgpt\b',
  '(?i)\bopenai\b',
  '(?i)\bgpt([-\s]?\d+(\.\d+)*)?\b',
  '(?i)\bassistant\b',
  '(?i)\btriager\b',
  '(?i)\bscam\b',
  '(?i)\bai\b'
)

# Raízes que vamos varrer (corrigido: cada Join-Path é um item separado)
$roots = @(
  (Join-Path $Root "docs"),
  (Join-Path $Root "scripts")
) | Where-Object { Test-Path $_ }

if (-not $roots -or $roots.Count -eq 0) {
  throw "No roots found to scan. Expected .\docs and/or .\scripts"
}

# Coleta arquivos (exclui pastas geradas/cache)
$files = @()
foreach ($r in $roots) {
  $files += Get-ChildItem -Path $r -Recurse -File -ErrorAction SilentlyContinue |
    Where-Object {
      $_.FullName -notmatch '\\_site\\' -and
      $_.FullName -notmatch '\\\.git\\' -and
      $_.FullName -notmatch '\\node_modules\\' -and
      $_.FullName -notmatch '\\\.jekyll-cache\\' -and
      $_.FullName -notmatch '\\\.sass-cache\\'
    }
}

if (-not $files -or $files.Count -eq 0) {
  throw "No files found under: $( $roots -join ', ' )"
}

$hits = @()
foreach ($pat in $forbiddenRegex) {
  $m = Select-String -Path $files.FullName -Pattern $pat -AllMatches -ErrorAction SilentlyContinue
  if ($m) { $hits += $m }
}

if ($hits.Count -gt 0) {
  Write-Host "[FAIL] Found forbidden/meta strings:" -ForegroundColor Red
  $hits | ForEach-Object { "$(.Path):$(.LineNumber): $(.Line)" } | Write-Output
  exit 1
}

Write-Host "[OK] Public-safe scan: no forbidden/meta strings found." -ForegroundColor Green
exit 0
