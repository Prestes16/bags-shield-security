# SNS Records / ROA — public case study (sanitized)

## Status
**Paid / Confirmed** (bug bounty outcome).  
This write-up is a **public-safe summary**: no exploit details, no weaponizable steps.

## Summary (high-level)
This case involved **validation consistency** in a cross-chain verification flow (ROA).  
The core risk class was **mismatched data sizing / serialization expectations** across related code paths, which can cause incorrect acceptance/rejection behavior under edge conditions.

## Why it matters
Verification code must be strict and consistent.  
Small representation mismatches can lead to:
- rejected valid proofs (availability/reliability risk), or
- inconsistent validation outcomes (security risk depending on context)

## Mitigation (high-level)
- Normalize data representation across the full pipeline
- Enforce strict size checks and explicit schemas
- Add regression tests for boundary cases

## Notes
Detailed reproduction steps and PoCs are intentionally **not published**.
