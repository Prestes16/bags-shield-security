---
title: Services
permalink: /services/
---

# Services

Boutique security research and engineering hardening for Web3/Solana systems — evidence-led, release-aware, and client-safe.

Focus areas: Solana/Web3 integrations, APIs, webhooks, authentication, secrets handling, abuse resistance, and release safety.

---

## Engagement models

### 1) Rapid PR / Patch Review (48–72h)
For urgent merges, hotfixes, and release windows.

**Deliverables**
- Review notes with clear risk calls (block / warn / ok)
- Minimal patch suggestions (surgical, testable, review-friendly)
- Release checklist (what to validate before shipping)

**Starting fee (USD):** 750–2,500

---

### 2) Launch Readiness Pack (5 business days)
A focused hardening push before a release or public launch.

**Best for**
- Webhook verification + replay resistance + idempotency
- Auth boundaries and permission surfaces
- Secrets exposure paths + logging hygiene
- Rate limits, timeouts, safe defaults

**Deliverables**
- Hardening PRs (small, clean diffs)
- Smoke/regression checks (prevent expensive breakage)
- Release gate checklist + verification notes

**Starting fee (USD):** 3,000–8,000

---

### 3) Hardening Sprint (10 business days)
A deeper reduction of high-risk failure modes across modules.

**Deliverables**
- Practical module notes (risk-first)
- Hardening PRs (PR-sized, review-friendly)
- Regression expansion where it matters (release safety)

**Starting fee (USD):** 6,000–15,000

---

### 4) Monthly Retainer (30 days)
Ongoing review gate + hardening throughput.

**Includes**
- Weekly cadence and predictable delivery
- Release-readiness gate for major deploys
- Continuous backlog reduction (PR-sized work)

**Starting fee (USD):** 10,000–25,000

---

### 5) Quarterly Retainer (90 days)
For teams that want a visible, consistent security program.

**Includes**
- Monthly roadmap (risk-first, scoped)
- Hardening + regression expansion
- Executive summary per month (what improved, what remains)

**Starting fee (USD):** 25,000–60,000

---

### 6) Security Program Build (6 months)
For teams building long-term assurance and shipping discipline.

**Includes**
- Risk-first roadmap and tracking
- Release gates + smoke/regression maturity
- Ongoing hardening across auth/webhooks/secrets/abuse surfaces

**Starting fee (USD):** quoted per scope (typically 60,000–150,000)

---

## How pricing works (scope-led, no surprises)
We price based on scope and risk surface. Key drivers:
- Number of endpoints and privileged flows (auth, funds, admin)
- Webhook complexity (signing, replay, idempotency, retries)
- Secrets and logging exposure paths
- Abuse resistance needs (rate limits, quotas, timeouts)
- Release window pressure (what must be safe by what date)
- Web3/Solana integration boundaries (signing, custody, fees)

**To scope quickly, send**
- repo/docs link (or a minimal private snippet set)
- target deadline / release window
- top 3 concerns (webhooks, auth, secrets, abuse, etc.)
- a short map of endpoints / modules

We reply with a scoped plan (what we will and won’t do) and a fixed quote or retainer option.

---

## Smart contract support (public-safe)
We support contract engagements via invariant analysis, testing strategy, and remediation tracking. Full reviews vary by scope and complexity; we quote after short scoping.

---

## Payment & logistics
- **Pricing:** USD (payment accepted in **USDC/USDT**)
- **Structure:** milestone-based or monthly
- **Scope discipline:** strictly within agreed scope and policy boundaries
- **No production targeting:** no exploitation attempts against live systems
- **Redaction:** sensitive details are removed from public writeups

