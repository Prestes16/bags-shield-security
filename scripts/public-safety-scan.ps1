param(
  [string]$Root = "docs"
)

$patterns = @(
  "chatgpt",
  "openai",
  "\bgpt\b",
  "\bai\b",
  "assistant",
  "triager",
  "scam"
)

$hits = @()

foreach ($pat in $patterns) {
  $m = Select-String -Path (Join-Path $Root "**\*.*") -Pattern $pat -SimpleMatch -ErrorAction SilentlyContinue
  if ($m) { $hits += $m }
}

if ($hits.Count -gt 0) {
  Write-Host "[FAIL] Found forbidden/meta strings:" -ForegroundColor Red
  $hits | ForEach-Object { "$(.Path):$(.LineNumber): $(.Line)" } | Write-Output
  exit 1
}

Write-Host "[OK] Public-safe scan: no forbidden/meta strings found." -ForegroundColor Green
