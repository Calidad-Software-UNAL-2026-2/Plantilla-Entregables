# Repositorio plantilla — Entrega 1 (PMP + Contrato)

Repositorio base para desarrollar la Entrega 1 de la materia usando
GitHub como herramienta de gestión de proyecto. Corresponde al
criterio **1.7** de la rúbrica (`rubrica-entrega-1.md`).

> **Si eres nuevo en GitHub (monitor o estudiante):** no necesitas saber
> nada de antemano. Este documento asume que nunca has creado un
> repositorio, una wiki o un Project, y te explica cada paso.

## Cómo se distribuye este repositorio

Este repositorio está marcado como **Template Repository**
(configuración ya activada en *Settings → General → Template
repository*). Cada equipo obtiene su propio repositorio de una de estas
dos formas:

- **El monitor crea el repo del equipo** (flujo actual): desde la
  página principal de este repositorio, botón verde **"Use this
  template" → "Create a new repository"**. Se elige la organización
  (`Calidad-Software-UNAL-2026`), se le pone un nombre (p. ej.
  `equipo-03-nombre`) y se marca como **privado**.
- Luego se invita a los 5 integrantes del equipo como colaboradores
  desde *Settings → Collaborators and teams* del repo recién creado (o
  agregándolos a un GitHub Team de la organización con acceso a ese
  repo, si se prefiere gestionar el acceso por equipos).

El repositorio resultante queda **completamente independiente** del
repositorio plantilla — no hereda cambios automáticamente. Si más
adelante se necesita propagar una corrección a un repo ya creado, se
hace manualmente (traer un archivo puntual con `git checkout <rama-remota> -- <archivo>` desde un remoto apuntando a este repo plantilla).

## Puesta en marcha por equipo (una sola vez)

Estos pasos los ejecuta el equipo (o el monitor, si prefiere dejarlos
ya listos antes de entregar el repo):

1. **Protección de rama** — *Settings → Branches → Add rule* sobre
   `main`:
   - ✅ Require a pull request before merging
   - ✅ Require approvals → mínimo 1
   - Esto genera la evidencia de revisión cruzada del Paso 8, ítem 1, y
     respalda el nivel Excelente del criterio "Adherencia al flujo de
     trabajo" (1.4) de la rúbrica.
2. **Crear labels:** `./scripts/setup-labels.sh` (requiere `gh`
   instalado y autenticado — `gh auth login`).
3. **Crear la primera página de la wiki** manualmente desde el
   navegador: pestaña **Wiki → Create the first page**. GitHub exige
   esto antes de que la wiki exista como repositorio clonable.
4. **Poblar el resto de la wiki:**
   `./scripts/setup-wiki.sh <url-del-repo-del-equipo>`.
5. **Configurar el GitHub Project:** seguir `docs/guia-github-projects.md`
   (vistas "Registro de Riesgos", "Registro de Requisitos" y "Roadmap").

## Estructura del repositorio

```
.github/
  workflows/
    mapa-procesos-flujo-unico.yml   # Paso 3: modelos sin procesos en paralelo
    mapa-procesos-paralelo.yml      # Paso 3: modelos con procesos en paralelo
  ISSUE_TEMPLATE/                    # Formularios para requisitos y riesgos
  PULL_REQUEST_TEMPLATE.md           # Checklist de revisión cruzada (Paso 8)
docs/
  mapa-procesos.md                   # Generado automáticamente por el workflow del Paso 3
  guia-github-projects.md            # Cómo configurar el Project (vistas y campos)
wiki-plantillas/                     # Contenido fuente para poblar la wiki real
scripts/
  setup-labels.sh                    # Crea la taxonomía de labels
  setup-wiki.sh                      # Copia wiki-plantillas/ a la wiki real del equipo
```

## Qué workflow de Actions usar (Paso 3)

Usa **solo uno** de los dos, según el modelo de ciclo de vida que tu
equipo defina:

- **`mapa-procesos-flujo-unico.yml`**: para cualquier modelo sin
  procesos simultáneos (secuencial, iterativo, incremental, cascada
  simple, etc.).
- **`mapa-procesos-paralelo.yml`**: para modelos con dos o más ramas de
  procesos que ocurren al mismo tiempo y luego se unen.

Ambos se ejecutan manualmente desde la pestaña **Actions** (botón "Run
workflow") — no se disparan solos con cada `push`, para no gastar
minutos de CI de la organización. El resultado final siempre queda en
`docs/mapa-procesos.md`.

## Dónde va cada cosa (resumen — detalle completo en el criterio 1.7 de la rúbrica)

| Contenido | Dónde |
|---|---|
| Extensión del modelo verbal (Paso 1) | Wiki |
| Actores, necesidades, requisitos de interfaz (Paso 2) | Wiki |
| Requisitos funcionales/no funcionales (Paso 2) | Issues + labels + vista "Registro de Requisitos" |
| Mapa de procesos (Paso 3) | GitHub Actions → `docs/mapa-procesos.md` |
| Alcance y EDT (Paso 4) | Wiki (EDT como imagen incrustada) |
| Modelo de ciclo de vida (Paso 4) | Wiki |
| Introducción y registro de riesgos (Paso 5) | Wiki (intro) + Issues + vista "Registro de Riesgos" |
| Estimación, cronograma y presupuesto (Paso 6) | Wiki (intro, FPA/Planning Poker, presupuesto) + Project vista "Roadmap" (cronograma/PERT/ruta crítica) |
| Aplicación normativa (Paso 7) | Wiki |
| PMP y contrato (Paso 8) | Wiki, consolidados vía Pull Request con revisión cruzada |

Ver `CONTRIBUTING.md` para el flujo de trabajo día a día del equipo.
