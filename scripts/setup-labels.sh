#!/usr/bin/env bash
# Crea la taxonomía de labels del proyecto usando GitHub CLI (`gh`).
# Requiere: gh instalado y autenticado (`gh auth login`).
#
# Uso:
#   ./scripts/setup-labels.sh                # repo actual (cwd)
#   ./scripts/setup-labels.sh owner/repo     # repo explícito
#
# Es idempotente: se puede ejecutar varias veces (--force actualiza).

set -euo pipefail

REPO_FLAG=()
if [[ "${1:-}" != "" ]]; then
  REPO_FLAG=(--repo "$1")
fi

create_label () {
  local name="$1" color="$2" desc="$3"
  gh label create "$name" --color "$color" --description "$desc" --force "${REPO_FLAG[@]}" >/dev/null
  echo "  ok: $name"
}

# Los repos nuevos traen labels por defecto de GitHub (bug, enhancement...)
# que no aplican a este trabajo y solo confunden. Se eliminan.
for l in "bug" "documentation" "duplicate" "enhancement" "good first issue" "help wanted" "invalid" "question" "wontfix"; do
  gh label delete "$l" --yes "${REPO_FLAG[@]}" >/dev/null 2>&1 || true
done

# 1. TIPO DE ISSUE (Paso 2, ítem 4)
create_label "tipo:funcional"     "0075CA" "Requisito funcional"
create_label "tipo:no-funcional"  "5319E7" "Requisito no funcional"
create_label "tipo:modulo"        "006B75" "Módulo del sistema (issue padre de sus requisitos)"

# 2. RIESGOS (Paso 5)
create_label "riesgo"             "B60205" "Registro de riesgo del proyecto"

# 3. CRONOGRAMA (Paso 6)
create_label "actividad"          "FBCA04" "Actividad de cronograma (PERT / ruta crítica)"
create_label "ruta-critica"       "D93F0B" "Actividad que pertenece a la ruta crítica (holgura = 0)"

echo "Labels listos."
