# Configuración del GitHub Project del equipo

Esta guía se sigue **una sola vez por equipo**, como parte de la puesta
en marcha del repositorio (ver `README.md`). No requiere escribir código
ni YAML — todo se hace desde la interfaz web de GitHub.

## 1. Crear el Project

1. En el repositorio del equipo, ve a la pestaña **Projects → New project**.
2. Elige la plantilla **"Table"** (o "Board", da igual — las vistas se
   agregan después) y ponle un nombre, por ejemplo `PMP — <nombre del equipo>`.
3. En **Settings** del Project, asegúrate de que esté vinculado al
   repositorio del equipo (para que los issues del repo aparezcan
   automáticamente al agregarlos).

## 2. Vista "Registro de Riesgos" (Paso 5)

1. Dentro del Project, click en **+ New view**.
2. Nombre de la vista: **Registro de Riesgos**.
3. Tipo de vista: **Table**.
4. Click en **Filter** y agrega: `label:riesgo`.
5. Agrega todos los issues de riesgo del repo al Project (botón
   **+ Add item** dentro de la vista, o arrastra desde la pestaña Issues).

Con esto, cada vez que se cree un nuevo issue con el formulario
`Riesgo` (que ya trae el label `riesgo`), aparecerá automáticamente en
esta vista.

## 3. Vista "Registro de Requisitos" (Paso 2)

Misma lógica que el paso anterior:

1. **+ New view** → nombre: **Registro de Requisitos**.
2. Tipo de vista: **Table**.
3. Filtro: `label:tipo:funcional,tipo:no-funcional` (muestra ambos tipos
   en una sola vista; si prefieres separarlos, crea dos vistas: una con
   `label:tipo:funcional` y otra con `label:tipo:no-funcional`).

## 4. Cronograma — vista "Roadmap" (Paso 6)

**Qué es una vista "Roadmap":** es un tipo de vista del Project que, en
vez de mostrar los issues en filas de tabla, los dibuja como barras
horizontales sobre una línea de tiempo — el efecto visual de un
diagrama de Gantt. Es solo otra forma de mirar los mismos issues, no
una herramienta aparte.

**De dónde salen los datos:** todo el detalle de PERT (optimista, más
probable, pesimista, tiempo esperado, desviación estándar), el análisis
de ruta crítica (ES, EF, LS, LF, holgura) y la marca de "¿Ruta
crítica?" **ya están dentro del cuerpo de cada issue**, gracias al
formulario `Actividad de cronograma`. No hay que crear ni un solo
campo personalizado en el Project para eso.

Lo único que aporta la vista Roadmap son **dos campos nativos que trae
por defecto** — *Start date* y *Target date* — que sirven únicamente
para dibujar la barra en la línea de tiempo.

### Pasos

1. Crea un **Milestone** por cada hito del EDT (pestaña Issues →
   Milestones → New milestone).
2. Por cada actividad, crea un issue con la plantilla **`Actividad de
   cronograma`** (ya trae el label `actividad` y todos los campos PERT
   en el cuerpo).
3. Asigna el issue al **Milestone** correspondiente (barra lateral
   derecha del issue).
4. Agrega el issue al Project.
5. **+ New view** → nombre: **Roadmap** → tipo de vista: **Roadmap**.
6. Agrupa la vista por Milestone: `Group by: Milestone` — así cada hito
   queda como una sección separada de la línea de tiempo.
7. Para cada actividad ya agregada, haz clic sobre su fila en la vista
   Roadmap y define *Start date* y *Target date* — eso dibuja la barra.

(Opcional) si además quieres una vista de tabla simple con todas las
actividades y sus campos PERT visibles en columnas, crea una vista
adicional **"Cronograma"** de tipo Table, filtrada por `label:actividad`
— al ser un formulario de issue, GitHub no convierte automáticamente
esos campos en columnas de tabla, pero puedes abrir cada issue desde
ahí para consultarlos.

## 5. Lo que NO va en el Project

Presupuesto y curva S se documentan completos en la wiki
(`06-Presupuesto-Curva-S`), no en el Project — GitHub Projects no tiene
campos calculados/acumulados, así que un acumulado de costos se hace
mejor en una hoja de cálculo y se resume en la wiki.
