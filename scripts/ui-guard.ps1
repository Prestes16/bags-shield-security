$ErrorActionPreference = "Stop"

function Fail($msg){
  Write-Host "[FAIL] $msg" -ForegroundColor Red
  exit 1
}

# 1) head-custom deve conter os marcadores do layout travado
$headPath = "docs/_includes/head-custom.html"
if (-not (Test-Path $headPath)) { Fail "Missing $headPath" }

$head = Get-Content $headPath -Raw -Encoding UTF8
$need = @(
  "BSS HOME PACK v9",
  "BSS ELITE FRAME v9.1",
  "BSS AVATAR PORTRAIT v9.2"
)

foreach($m in $need){
  if ($head -notmatch [regex]::Escape($m)) { Fail "Missing marker in head-custom.html: $m" }
}

# 2) Services não pode ter o bloco duplicado "Contact"
$svcCandidates = @("docs/services.md","docs/services/index.md")
$svc = $svcCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if ($svc){
  $svcTxt = Get-Content $svc -Raw -Encoding UTF8

  # se existir header "## Contact" simples, é duplicata (a gente só quer o fast)
  if ($svcTxt -match '(?m)^\s*##\s+Contact\s*$') {
    Fail "Services has duplicated '## Contact' block. Keep only 'Contact (fast)'. File: $svc"
  }

  # sanity: não pode estar vazio / quebrado
  if ($svcTxt.Trim().Length -lt 80) {
    Fail "Services content looks too short (possible wipe). File: $svc"
  }
}

# 3) CRLF guard (evita rebagunçar)
$files = @("docs/_includes/head-custom.html","docs/index.md")
if ($svc) { $files += $svc }

foreach($f in $files){
  $t = Get-Content $f -Raw -Encoding UTF8
  if ($t -match "`r`n") { Fail "CRLF found in $f (normalize to LF)" }
}

Write-Host "[OK] UI guard passed. Layout is locked." -ForegroundColor Green
