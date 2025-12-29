param(
  [string]$Base = "https://prestes16.github.io/bags-shield-security"
)

$Paths = @(
  "/",
  "/start/",
  "/services/",
  "/contact/"
  "/standards/",
  "/casebooks/",
  "/assets/css/bss.css",
  "/assets/css/avatars.v9.css",
  "/assets/img/team/cleiton.webp",
  "/assets/img/team/luna.webp"
)

function Try-HeadThenGet([string]$url) {
  try {
    $h = Invoke-WebRequest -Uri $url -Method Head -UseBasicParsing
    return [pscustomobject]@{ Url=$url; Method="HEAD"; Status=$h.StatusCode; Type=$h.Headers.'Content-Type'; Bytes=$null }
  } catch {
    try {
      $g = Invoke-WebRequest -Uri $url -Method Get -UseBasicParsing
      return [pscustomobject]@{ Url=$url; Method="GET"; Status=$g.StatusCode; Type=$g.Headers.'Content-Type'; Bytes=$g.RawContentLength }
    } catch {
      $code2 = $null
      try { $code2 = $_.Exception.Response.StatusCode.value__ } catch {}
      $status = if ($code2 -ne $null) { $code2 } else { "ERR" }
      return [pscustomobject]@{ Url=$url; Method="GET"; Status=$status; Type=$null; Bytes=$null }
    }
  }
}

$rows = foreach ($p in $Paths) {
  $u = $Base.TrimEnd("/") + $p
  Try-HeadThenGet $u
}

$rows | ForEach-Object {
  $path = $_.Url.Replace($Base.TrimEnd("/"), "")
  if ($_.Bytes -ne $null) {
    "{0} -> {1} via {2} ({3}, {4} bytes)" -f $path, $_.Status, $_.Method, $_.Type, $_.Bytes
  } else {
    $t = if ($_.Type) { $_.Type } else { "n/a" }
    "{0} -> {1} via {2} ({3})" -f $path, $_.Status, $_.Method, $t
  }
}
