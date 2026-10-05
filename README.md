# Repositorio plantilla — Entrega 1 (PMP + Contrato)

Repositorio base para desarrollar la Entrega 1 de la materia usando GitHub
como herramienta de gestión de proyecto. La guía técnica de qué va dónde está
en la sección **1.6** de la rúbrica.

## Dónde va cada cosa

- **Wiki** (pestaña Wiki): documentación narrativa de los Pasos 1 a 8. El menú
  lateral enlaza todas las páginas; cada página trae su propia estructura.
- **Issues** (pestaña Issues): los módulos, requisitos funcionales y no
  funcionales (Paso 2), los riesgos (Paso 5) y las actividades del cronograma
  (Paso 6). Cada tipo se crea con su formulario.
- **GitHub Project** (pestaña Projects): tres vistas sobre los issues:
  *Registro de Requisitos*, *Registro de Riesgos* y *Roadmap*.
- **GitHub Actions** (pestaña Actions): genera `docs/mapa-procesos.md`
  (Paso 3).

| Contenido | Dónde |
|---|---|
| Extensión del modelo verbal (Paso 1) | Wiki |
| Actores, necesidades, requisitos de interfaz (Paso 2) | Wiki |
| Módulos y requisitos funcionales/no funcionales (Paso 2) | Issues (módulo = issue padre, requisito = sub-issue) + vista "Registro de Requisitos" |
| Mapa de procesos (Paso 3) | Wiki (caracterización y diagrama) + Actions → `docs/mapa-procesos.md` |
| Alcance, EDT y entregables; ciclo de vida (Paso 4) | Wiki (el EDT, como imagen incrustada) |
| Introducción/tailoring y registro de riesgos (Paso 5) | Wiki + Issues + vista "Registro de Riesgos" |
| Estimación, cronograma y presupuesto (Paso 6) | Wiki (tailoring, FPA/Planning Poker, presupuesto, curva S) + Milestones, Issues y vista "Roadmap" |
| Aplicación normativa (Paso 7) | Wiki |
| PMP y contrato (Paso 8) | Wiki |

## Formularios de issues

| Formulario | Prefijo del título | Label |
|---|---|---|
| Módulo del sistema | `[MOD-XX]` | `tipo:modulo` |
| Requisito funcional | `[RF-XX]` | `tipo:funcional` |
| Requisito no funcional | `[RNF-XX]` | `tipo:no-funcional` |
| Riesgo | `[RSG-XX]` | `riesgo` |
| Actividad de cronograma | `[ACT-XX]` | `actividad` (+ `ruta-critica` si aplica) |

Los requisitos se asocian a su módulo como **sub-issues** (en el issue del
módulo: *Sub-issues → Add existing issue*). Un issue tiene un solo padre. Los
requisitos que afectan a todo el sistema van bajo `[MOD-00] Transversal`.

## Qué workflow de Actions usar (Paso 3)

Usa **solo uno** de los dos, según el modelo de ciclo de vida que tu equipo
defina:

- **`mapa-procesos-flujo-unico.yml`**: modelos sin procesos simultáneos
  (secuencial, iterativo, incremental, cascada simple, etc.).
- **`mapa-procesos-paralelo.yml`**: modelos con dos o más ramas de procesos que
  ocurren al mismo tiempo y luego se unen.

Ambos se ejecutan manualmente desde la pestaña **Actions** (botón *Run
workflow*): no se disparan solos con cada `push`. El resultado queda en
`docs/mapa-procesos.md`. La carpeta `docs/ejemplo-iot/` es solo una salida de
ejemplo.

## Estructura del repositorio

```
.github/
  workflows/                 # Paso 3: mapa de procesos (flujo único / paralelo)
  ISSUE_TEMPLATE/            # Formularios: módulo, requisitos, riesgo, actividad
docs/
  mapa-procesos.md           # Lo genera el workflow del Paso 3
  ejemplo-iot/               # Salida de ejemplo (referencia)
wiki-plantillas/             # Contenido fuente de la wiki (lo copia el monitor)
scripts/                     # Solo para el monitor (aprovisionamiento)
```

> **Estudiantes:** no necesitan ejecutar nada de `scripts/` ni de
> `wiki-plantillas/`. Esa preparación ya la hizo el monitor.
