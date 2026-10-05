#!/usr/bin/env bash
# Copia las plantillas de wiki-plantillas/ hacia la wiki real del repositorio
# del equipo. Necesario porque GitHub NO copia la wiki al crear un repo
# desde un "template repository".
#
# REQUISITO DE GITHUB: la wiki no existe como repositorio git clonable hasta
# que alguien crea UNA página desde la web (pestaña Wiki -> "Create the first
# page" -> Save). Hazlo antes de correr este script.
#
# Comportamiento:
#  - Wiki recién creada (1 solo commit, el de la primera página manual):
#    copia TODAS las plantillas, sobrescribiendo esa primera página
#    (así Home.md y _Sidebar.md quedan con el contenido correcto).
#  - Wiki que ya tiene historia (el equipo ya editó): NO sobrescribe nada,
#    solo agrega las páginas que falten.
#
# Uso:
#   ./scripts/setup-wiki.sh https://github.com/<org>/<repo>.git

set -euo pipefail

if [[ "${1:-}" == "" ]]; then
  echo "Uso: $0 https://github.com/<org>/<repo>.git"
  exit 1
fi

SRC_DIR="$(cd "$(dirname "$0")/../wiki-plantillas" && pwd)"
REPO_URL="$1"
WIKI_URL="${REPO_URL%.git}.wiki.git"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "Clonando wiki: $WIKI_URL"
git clone --quiet "$WIKI_URL" "$TMP_DIR"
cd "$TMP_DIR"

COMMITS="$(git rev-list --count HEAD)"
if [[ "$COMMITS" -le 1 ]]; then
  echo "Wiki nueva ($COMMITS commit): copiando todas las plantillas."
  cp -f "$SRC_DIR"/*.md .
else
  echo "Wiki con historia ($COMMITS commits): solo se agregan páginas faltantes."
  cp -n "$SRC_DIR"/*.md . || true
fi

git add .
if git diff --cached --quiet; then
  echo "No hay cambios que subir."
else
  git commit --quiet -m "docs(wiki): inicializar estructura de páginas desde la plantilla del curso"
  git push --quiet
  echo "Wiki poblada correctamente."
fi
