# Método público — HARD / anti-fantasia

Nosso padrão: **ética + evidência + produção**.

---

## Princípios
1) Escopo e regras primeiro  
2) Evidência > pressa  
3) Nada inventado (código real, ambiente controlado)  
4) Clareza brutal (reprodução simples)  
5) Mitigação junto (correção + regressão)  
6) Nada fora de escopo, nada em produção

---

## Fluxo
- Escolhe alvo + domínio (auth/webhooks/multi-tenant/accounting)
- Define invariante (o que “sempre deveria ser verdade”)
- Busca quebra no código real
- Valida em laboratório
- Reporta com impacto realista + mitigação

---

## Medimos qualidade por
- reprodutibilidade
- precisão (sem exagero)
- ética/escopo
- utilidade (mitigação e testes)
