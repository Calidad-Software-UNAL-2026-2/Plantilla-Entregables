# Paso 3 — Mapa de Procesos y Modelo de Ciclo de Vida

## 1. Qué se hace aquí y qué se hace en GitHub Actions

Esta página es el lugar donde se caracteriza el **mapa de procesos completo** del proyecto: procesos **estratégicos**, **de apoyo** y **clave/misionales**.

El workflow de GitHub Actions (`.github/workflows/mapa-procesos-*.yml`), que genera `docs/mapa-procesos.md`, **solo representa los procesos clave/misionales** — es decir, los procesos técnicos del ciclo de vida del software (p. ej. Requisitos, Diseño, Implementación, Testing). Los procesos estratégicos y de apoyo **no se representan ahí**: se caracterizan únicamente en esta página.

En resumen:

| Tipo de proceso | Dónde se caracteriza |
|---|---|
| Estratégico | Solo aquí |
| De apoyo | Solo aquí |
| Clave / misional | Aquí **y** en `docs/mapa-procesos.md` (vía el workflow de Actions) |

## 2. Selección y tailoring de procesos

De los procesos del ciclo de vida de la **ISO/IEC/IEEE 12207:2017**, seleccione los pertinentes al alcance del proyecto, clasificándolos en las tres categorías anteriores, y justifique brevemente por qué se incluye cada uno (*tailoring*). No es necesario citar textualmente ninguna cláusula en este paso — eso solo aplica al Paso 7.

## 3. Molde de caracterización (copiar y pegar por cada proceso)

Use este bloque una vez por cada proceso seleccionado, sin importar su tipo:

```
### Proceso: <Nombre del proceso>

- **Tipo:** Estratégico / De apoyo / Clave
- **Justificación de la selección:** <por qué se incluye este proceso en el tailoring del proyecto>
- **Entradas:** <...>
- **Actividades:** <...>
- **Salidas:** <...>
- **Recursos:** <...>
```

### 3.1 Procesos estratégicos

_(pegue aquí un bloque del molde por cada proceso estratégico seleccionado)_

### 3.2 Procesos de apoyo

_(pegue aquí un bloque del molde por cada proceso de apoyo seleccionado)_

### 3.3 Procesos clave / misionales

> Recuerde: estos procesos, además de caracterizarse aquí, deben quedar representados en `docs/mapa-procesos.md` mediante el workflow de GitHub Actions correspondiente (flujo único o paralelo, según el modelo de ciclo de vida) — ver el `README.md` del repositorio.

_(pegue aquí un bloque del molde por cada proceso clave seleccionado)_

## 4. Diagrama del mapa de procesos

Elabore un diagrama (herramienta libre) que muestre los tres tipos de procesos y su relación entre sí, y arrástrelo directamente a este editor — GitHub lo sube y genera el enlace automáticamente.

<!-- Arrastra aquí la imagen del mapa de procesos -->
