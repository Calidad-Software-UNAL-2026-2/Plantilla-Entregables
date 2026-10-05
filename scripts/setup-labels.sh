#!/usr/bin/env bash
# Crea la taxonomía de labels del proyecto usando GitHub CLI (`gh`).
# Requiere: gh instalado y autenticado (`gh auth login`), y ejecutarse
# dentro de una copia local del repo del equipo (o pasar --repo owner/repo).
#
# Uso:
#   ./scripts/setup-labels.sh                # repo actual (cwd)
#   ./scripts/setup-labels.sh owner/repo     # repo explícito

set -euo pipefail

REPO_FLAG=()
if [[ "${1:-}" != "" ]]; then
  REPO_FLAG=(--repo "$1")
fi

create_label () {
  local name="$1" color="$2" desc="$3"
  # --force actualiza el label si ya existe (color/descripción)
  gh label create "$name" --color "$color" --description "$desc" --force "${REPO_FLAG[@]}"
}

# ==========================================
# 1. TIPO DE REQUISITO (Paso 2, ítem 4)
# ==========================================
# Azul (0075CA): Estándar en GitHub para "enhancement/features". Representa creación y funcionalidad.
create_label "tipo:funcional"     "0075CA" "Requisito funcional"

# Morado (5319E7): Color profundo asociado a estructura, arquitectura y restricciones del sistema.
create_label "tipo:no-funcional"  "5319E7" "Requisito no funcional"


# ==========================================
# 2. MÓDULOS DEL SISTEMA (Agrupadores)
# ==========================================
# Verde azulado / Teal (006B75): Color estructural que agrupa sin alarmar. 
# Destaca visualmente en los tableros Kanban para identificar rápidamente a qué épica pertenece el issue.
create_label "modulo:transversal" "006B75" "Requisitos globales que atraviesan todo el sistema"
create_label "modulo"     "006B75" "Módulo funcional"


# ==========================================
# 3. RIESGOS (Paso 5)
# ==========================================
# Rojo oscuro (B60205): Universalmente asociado a peligro, severidad y atención inmediata requerida.
create_label "riesgo"             "B60205" "Registro de riesgo del proyecto"


# ==========================================
# 4. ACTIVIDADES DE CRONOGRAMA (Paso 6)
# ==========================================
# Amarillo (FBCA04): Representa "trabajo en progreso", construcción, maquinaria y tareas operativas de tiempo.
create_label "actividad"          "FBCA04" "Actividad de cronograma (PERT / ruta crítica)"

echo "✅ Labels creados y actualizados correctamente con la nueva paleta de colores."