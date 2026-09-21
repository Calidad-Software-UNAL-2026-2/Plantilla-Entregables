# Flujo de trabajo del equipo

## Para contenido narrativo (wiki)

1. Entra a la pestaña **Wiki** del repo y edita la página correspondiente
   (ver `_Sidebar.md` para la lista completa), **o** clona la wiki
   localmente si prefieres trabajar con tu editor y pasar por revisión
   antes de publicar:
   ```
   git clone https://github.com/<org>/<repo>.wiki.git
   ```
2. Si editas desde el navegador, avisa al equipo antes de dar por
   cerrada la sección — la wiki nativa no pasa por Pull Request, así
   que la "revisión cruzada" ahí es manual.
3. Si clonas la wiki localmente, puedes hacer `git blame`/`git log -p`
   sobre cualquier página para ver quién escribió cada línea y cuándo.

## Para requisitos y riesgos (issues)

1. Pestaña **Issues → New issue** → elige la plantilla (`Requisito
   funcional`, `Requisito no funcional`, `Riesgo`).
2. Asigna labels de módulo (`modulo:<nombre>`) y prioridad si aplica.
3. Para riesgos: asigna un **Assignee** real (ese es el "responsable").
4. Agrega el issue al Project del equipo — aparecerá automáticamente en
   la vista "Registro de Requisitos" o "Registro de Riesgos" según su
   label (ver `docs/guia-github-projects.md`).

## Para el cronograma (Project — Roadmap)

1. Crea un Milestone por hito del EDT (pestaña Issues → Milestones).
2. Crea un Issue por actividad, asígnalo al Milestone correspondiente y
   agrégalo al Project.
3. Llena los campos personalizados de la actividad (estimaciones PERT,
   tiempos de ruta crítica, ¿ruta crítica?) — ver la tabla de campos en
   `docs/guia-github-projects.md`.
4. Verifica la vista "Roadmap": debe mostrar la actividad como una
   barra en la línea de tiempo, agrupada por su Milestone.

## Para el mapa de procesos (Paso 3)

1. Decide con tu equipo si tu modelo de ciclo de vida tiene procesos en
   paralelo o no, y elige el workflow correspondiente
   (`mapa-procesos-flujo-unico.yml` o `mapa-procesos-paralelo.yml`).
2. Edita el workflow elegido: duplica el bloque de job de ejemplo por
   cada proceso real que tu equipo seleccionó, ajustando los `needs:`
   para reflejar el orden real.
3. Ve a la pestaña **Actions**, selecciona el workflow y pulsa
   **"Run workflow"**.
4. El resultado queda en `docs/mapa-procesos.md`.

## Para consolidar el PMP y el contrato (Paso 8)

1. Clona la wiki localmente (ver arriba).
2. Crea una rama, edita `08a-PMP.md` y `08b-Contrato.md` consolidando lo
   ya escrito en las demás páginas.
3. Abre un Pull Request **desde el repo de la wiki** (no del repo
   principal) hacia `master`, y pide que al menos un integrante distinto
   apruebe antes de mergear.
4. Para el resto del repo (issues, workflow), la protección de rama de
   `main` ya exige 1 aprobación antes de mergear cualquier Pull Request
   — úsala también para cambios sustanciales de estructura, no solo
   para el PMP final.

## Reglas generales

- Ningún artefacto es "propiedad" de una sola persona: toda sección debe
  poder explicarla cualquier integrante en la sustentación.
- Los commits/ediciones genéricos ("cambios varios") no cuentan como
  evidencia de proceso — sé específico en los mensajes de commit y en
  los comentarios de los issues.
- Los Pasos 5, 6 y 7 exigen un ejercicio de *tailoring* de ISO/IEC/IEEE
  12207 y CMMI cada uno (el de 6 y 7 con cita textual obligatoria en el
  Paso 7). Repártanlos entre los cinco integrantes de forma que cada
  quien lidere exactamente uno.
