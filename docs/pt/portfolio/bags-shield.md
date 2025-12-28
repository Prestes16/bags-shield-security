---
lang: pt-BR
---

# Portfólio — Bags Shield (engenharia segura aplicada)

Bags Shield é um projeto que prova nosso estilo: **segurança por padrão** e **confiabilidade**.

---

## O que já existe (evidência técnica)
- Contrato v0 com schemas strict (dditionalProperties:false)
- Dev-server com validação (AJV) e rotina de testes
- Headers padrão: X-Request-Id + Cache-Control: no-store + CORS consistente
- Smokes automatizados para regressão

---

## Por que isso importa
Times pequenos quebram por detalhes: cache, CORS, validação, webhooks, secrets.  
Aqui a gente demonstra prática real: **hardening + processo**.

---

## Direção (o que evolui)
- Endpoints proxy e integrações (com retries/timeout/rate-limit)
- Observabilidade (requestId, timing, status)
- Release safety (checks e regressão)

