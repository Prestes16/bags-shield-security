# Public research log (sanitized)

This is a public-facing log of security research and bounty work.  
**No exploit instructions. No sensitive details.** Only high-level evidence, outcomes, and mitigations.

## Status legend
- **Paid / Confirmed:** accepted & rewarded
- **Reported:** submitted and pending
- **Validated (internal):** confirmed in lab, not published yet
- **Refuted:** investigated, not a vulnerability
- **In progress:** active research

---

## Entries

### Solana Name Service (SNS) — Records / ROA
- **Status:** Paid / Confirmed
- **Theme:** cross-chain verification edge cases (data-size mismatches / validation consistency)
- **Outcome:** report accepted and rewarded (public summary available)
- **Mitigation (high-level):** normalize serialization sizes, enforce strict validation, add regression tests  
Link: [SNS Records / ROA (public summary)](../casebooks/sns-roa-paid.md)

### SNS Categories
- **Status:** Validated (internal)
- **Theme:** governance/authority model and operational risk (centralized curation trade-offs)
- **Mitigation (high-level):** document trust assumptions, monitor authority changes, add safeguards

### Firedancer (research track)
- **Status:** In progress
- **Theme:** performance-critical code paths and correctness under edge conditions
- **Note:** details withheld until safe to publish

### Deribit API (testnet) — investigation
- **Status:** Refuted
- **Theme:** auth/session behavior, parameter robustness, and consistency checks
- **Outcome:** no exploitable security issue confirmed; learnings retained privately

### Lido (research track)
- **Status:** In progress
- **Theme:** accounting invariants, edge-case states, and withdrawal safety
- **Note:** details withheld until safe to publish

### AIxBlock (research track)
- **Status:** In progress
- **Theme:** auth boundaries, key handling, sandboxing assumptions
- **Note:** details withheld until safe to publish
