# Public research log (sanitized)

This is a public-facing, **client-safe** record of security research and assurance work.

**No exploit instructions. No payloads. No weaponizable details.**  
Only high-level evidence, outcomes, and mitigation guidance.

## Status legend
- **Paid / Confirmed:** accepted & rewarded (program outcome)
- **Reported:** submitted and pending
- **Validated (internal):** confirmed in lab, not published
- **Refuted:** investigated, not a vulnerability
- **In progress:** active research

## Redaction note
For safety, entries below intentionally omit reproduction steps, PoCs, and sensitive operational details.

---

## Entries

### SNS — Records / ROA
- **Status:** Paid / Confirmed
- **Domain:** Cross-chain verification / validation consistency
- **Risk class:** Representation mismatch (serialization / size invariants)
- **Outcome:** Accepted and rewarded (public case study)
- **Mitigation class (high-level):** normalize representations, enforce strict size checks, add regression tests  
Link: [SNS Records / ROA — public case study](../casebooks/sns-roa-paid.md)

### SNS — Categories (governance model)
- **Status:** Validated (internal)
- **Domain:** Authority boundaries / operational security
- **Risk class:** Trust assumptions (central authority trade-offs)
- **Mitigation class (high-level):** document assumptions, add safeguards, monitor authority changes

### Firedancer (performance-critical track)
- **Status:** In progress
- **Domain:** Correctness under edge conditions
- **Public-safe note:** details withheld until safe to publish

### Deribit API (testnet) — investigation
- **Status:** Refuted
- **Domain:** Authentication/session behavior & robustness checks
- **Outcome:** no exploitable issue confirmed; lessons retained privately

### Lido (research track)
- **Status:** In progress
- **Domain:** Accounting invariants & withdrawal safety
- **Public-safe note:** details withheld until safe to publish

### AIxBlock (research track)
- **Status:** In progress
- **Domain:** Auth boundaries, key handling, sandbox assumptions
- **Public-safe note:** details withheld until safe to publish
