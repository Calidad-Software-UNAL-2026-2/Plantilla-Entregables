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

1. **+ New view** → nombre: **Roadmap**.
2. Tipo de vista: **Roadmap** (GitHub la ofrece directamente en el
   selector de tipo de vista).
3. En la configuración de la vista, define qué campos usa como
   **Start date** y **Target date** — estos son campos nativos que
   crea automáticamente el tipo de vista Roadmap; edítalos por cada
   actividad para que se dibuje la barra en la línea de tiempo.
4. Agrupa la vista **por Milestone** (`Group by: Milestone`), así cada
   hito del EDT queda como una sección separada del Roadmap.

### Campos personalizados a crear para las actividades

Antes de llenar el Roadmap, crea estos campos personalizados en el
Project (botón **+** al final de las columnas de cualquier vista tipo
tabla → **New field**):

| Campo | Tipo | Para qué |
|---|---|---|
| Estimación optimista (días) | Number | PERT |
| Estimación más probable (días) | Number | PERT |
| Estimación pesimista (días) | Number | PERT |
| Tiempo esperado (días) | Number | PERT (calculado a mano o en Excel, se transcribe aquí) |
| Desviación estándar | Number | PERT |
| Inicio más temprano (ES) | Number o Date | Ruta crítica |
| Fin más temprano (EF) | Number o Date | Ruta crítica |
| Inicio más tardío (LS) | Number o Date | Ruta crítica |
| Fin más tardío (LF) | Number o Date | Ruta crítica |
| Holgura | Number | Ruta crítica |
| ¿Ruta crítica? | Single select (Sí / No) | Resaltar visualmente las actividades críticas |

Estos campos aplican a todas las vistas del Project (Table, Board,
Roadmap) porque son propiedades del ítem, no de la vista — solo se
crean una vez.

Cada **actividad de cronograma** se crea como un Issue normal (puede
ser sin plantilla, o puedes crear una plantilla `Actividad de
Cronograma` si tu equipo procesa muchas), se asigna a un **Milestone**
(pestaña Issues → Milestones → New milestone, uno por hito del EDT), y
se agrega al Project para llenar los campos de la tabla anterior.

## 5. Lo que NO va en el Project

Presupuesto y curva S se documentan completos en la wiki
(`06-Presupuesto-Curva-S`), no en el Project — GitHub Projects no tiene
campos calculados/acumulados, así que un acumulado de costos se hace
mejor en una hoja de cálculo y se resume en la wiki.
