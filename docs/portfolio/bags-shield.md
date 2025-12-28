# Portfolio — Bags Shield (secure engineering in practice)

Bags Shield shows our style: **secure-by-default** + **reliability**.

---

## What exists (technical evidence)
- v0 contract with strict schemas (dditionalProperties:false)
- Dev server validation (AJV) + test routines
- Standard headers: X-Request-Id + Cache-Control: no-store + consistent CORS
- Automated smokes to prevent regressions

---

## Why this matters
Small teams break on details: caching, CORS, validation, webhooks, secrets.  
Here we demonstrate real execution: **hardening + process**.

---

## Direction (what we’re building next)
- Proxy endpoints and integrations (retry/timeout/rate-limit)
- Observability (requestId, timings, status)
- Release safety (checks + regression)
