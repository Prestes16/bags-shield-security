param(
  [string]$Base = "https://prestes16.github.io/bags-shield-security"
)

$Paths = @(
  "/",
  "/start/",
  "/services/",
  "/standards/",
  "/casebooks/",
  "/assets/css/bss.css",
  "/assets/img/team/cleiton.jpg",`n  "/assets/img/team/luna.jpg",`n  "/assets/img/team/cleiton.webp",`n  "/assets/img/team/luna.webp"
)

function Try-HeadThenGet([string]$url) {
  # 1) HEAD (rÃ¡pido), mas GH Pages Ã s vezes nÃ£o curte HEAD em assets
  try {
    $h = Invoke-WebRequest -Uri $url -Method Head -UseBasicParsing
    return [pscustomobject]@{ Url=$url; Method="HEAD"; Status=$h.StatusCode; Type=$h.Headers."Content-Type"; Bytes=$null }
  } catch {
    # 2) GET fallback
    try {
      $g = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing
      return [pscustomobject]@{ Url=$url; Method="GET"; Status=$g.StatusCode; Type=$g.Headers."Content-Type"; Bytes=$g.RawContentLength }
    } catch {
      $code2 = $null
      try { $code2 = $_.Exception.Response.StatusCode.value__ } catch {}
      if ($code2 -ne $null) {
        return [pscustomobject]@{ Url=$url; Method="GET"; Status=$code2; Type=$null; Bytes=$null }
      } else {
        return [pscustomobject]@{ Url=$url; Method="GET"; Status="ERR"; Type=$null; Bytes=$null }
      }
    }
  }
}

$rows = foreach ($p in $Paths) {
  $u = $Base.TrimEnd("/") + $p
  Try-HeadThenGet $u
}

$rows | ForEach-Object {
  $baseTrim = $Base.TrimEnd("/")
  $path = $_.Url.Replace($baseTrim, "")

  $type = if ($_.Type) { $_.Type } else { "n/a" }

  if ($_.Bytes -ne $null) {
    "{0} -> {1} via {2} ({3}, {4} bytes)" -f $path, $_.Status, $_.Method, $type, $_.Bytes
  } else {
    "{0} -> {1} via {2} ({3})" -f $path, $_.Status, $_.Method, $type
  }
}
