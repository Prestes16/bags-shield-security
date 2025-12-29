# Responsible disclosure & redaction policy

Bags Shield Security follows responsible, scope-respecting practices.

## Non-negotiables
- Scope and permission first
- No production exploitation
- No unauthorized data access
- No credential retention
- No publication of exploit-enabling details

## What we publish (public-safe)
- Executive-style summaries: context, evidence (sanitized), realistic impact, mitigations
- Redacted screenshots/logs (sensitive data removed)
- Clear status labels: Paid / Confirmed / Reported / In progress / Refuted

## Redaction rules (simple and strict)
We remove or generalize:
- step-by-step exploitation paths
- secrets, tokens, endpoints that enable abuse
- payloads/PoCs, automation scripts, or anything “weaponizable”
- private identifiers or customer-specific details

## Reporting style
- Short, human-readable, reproducible (lab-safe)
- Evidence → impact → mitigation
- Regression tests when possible

## Tooling & automation

We use automation tooling (including AI-assisted drafting) to accelerate analysis and documentation.
All deliverables are reviewed by the lead, and we do not disclose client secrets or sensitive implementation details.
