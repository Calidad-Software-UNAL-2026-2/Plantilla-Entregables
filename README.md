# Repositorio plantilla — Entrega 1 (PMP + Contrato)

Repositorio base para desarrollar la Entrega 1 de la materia usando
GitHub como herramienta de gestión de proyecto. Corresponde al
criterio **1.7** de la rúbrica.

## Puesta en marcha por equipo (una sola vez)

Estos pasos los ejecuta el equipo (o yo, el monitor, si decido dejarlos
ya listos antes de entregar el repo):

1. **Crear labels:** `./scripts/setup-labels.sh` (requiere `gh`
   instalado y autenticado — `gh auth login`).
2. **Crear la primera página de la wiki** manualmente desde el
   navegador: pestaña **Wiki → Create the first page**. GitHub exige
   esto antes de que la wiki exista como repositorio clonable.
3. **Poblar el resto de la wiki:**
   `./scripts/setup-wiki.sh <url-del-repo-del-equipo>`.
4. **Configurar el GitHub Project:** Crear un project nuevo usando el template de la organización.

## Estructura del repositorio

```
.github/
  workflows/
    mapa-procesos-flujo-unico.yml   # Paso 3: modelos sin procesos en paralelo
    mapa-procesos-paralelo.yml      # Paso 3: modelos con procesos en paralelo
  ISSUE_TEMPLATE/                    # Formularios para requisitos y riesgos
docs/
  mapa-procesos.md                   # Generado automáticamente por el workflow del Paso 3
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
| PMP y contrato (Paso 8) | Wiki |
