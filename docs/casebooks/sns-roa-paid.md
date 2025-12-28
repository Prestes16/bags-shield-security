# SNS Records / ROA — Case study (public-safe)

**Engagement type:** vulnerability research (responsible disclosure)  
**Status:** Paid / Confirmed  
**Scope note:** this page is intentionally **sanitized**. No exploit steps, no payloads, no weaponizable details.

---

## Executive summary

We identified a **cross-chain verification consistency issue** caused by **representation/size invariants** not being enforced uniformly across the verification flow.

The practical risk class is **validation mismatch**: when different components interpret the same identity/record material under different assumptions (e.g., fixed-length vs variable-length representations), systems can drift into states that are **incorrect, fragile, or bypass-prone** depending on surrounding logic.

This report was accepted and rewarded via a responsible disclosure process.

---

## Why it matters (non-technical)

Security systems rely on “everyone agrees what the data means.”  
If two parts of the system disagree on the **shape** of an identity proof or record, you can get:
- incorrect accept/reject decisions,
- broken revocation or stale-state handling,
- brittle behavior under integrations and future refactors.

---

## Technical summary (high-level)

- **Category:** verification logic / invariants
- **Root class:** inconsistent size/encoding expectations
- **Failure mode:** different paths apply different assumptions to the same material
- **Impact class:** correctness + security boundary erosion (depends on surrounding checks)

We intentionally omit reproduction details to prevent abuse.

---

## Recommended mitigations (high-level)

1) **Normalize representations** at the boundary (single canonical form).  
2) **Enforce strict size invariants** and fail closed on mismatch.  
3) Add **regression tests** covering:
   - normal flows,
   - revocation/unverify flows,
   - stale-state checks,
   - cross-chain format variations.

---

## What we delivered (client-safe artifacts)

- Clear statement of the invariant being violated
- Evidence of mismatch across code paths (sanitized)
- Mitigation guidance + regression test guidance

---

## Disclosure & safety

We follow responsible disclosure.  
This page intentionally avoids details that could enable exploitation.

If you are the maintainer of a system with similar verification flows and want a **private** technical walkthrough, reach out.

---

## Contact
- X (Twitter): @Cleiton16144221  
- Discord: @cleiton8509p  
- Email: Cleitonprestes54@gmail.com
