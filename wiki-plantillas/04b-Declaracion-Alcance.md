# Paso 4.1-4.2 — Declaración de Alcance, EDT y Entregables

## 1. Objetivos del proyecto

| Objetivo | Descripción |
| -------- | ----------- |
|          |             |

## 2. Restricciones del proyecto

| Tipo | Restricción |
| ---- | ----------- |
|      |             |

## 3. Qué entra en el alcance

-

## 4. Qué NO entra en el alcance

-

> Los criterios de aceptación y las exclusiones no se redactan como
> secciones separadas: quedan cubiertos implícitamente por los
> requisitos no funcionales y por lo declarado aquí como fuera de alcance.

## 5. EDT / WBS

_Herramienta libre (diagrams.net, PowerPoint, Excel, a mano, etc.).
Arrastra la imagen/captura directamente a este editor — GitHub la sube
y genera el enlace automáticamente._

<!-- Arrastra aquí la imagen del EDT -->

## 6. Índice de entregables del proyecto

A continuación se enumeran todos los artefactos que componen este proyecto, dónde viven y qué contienen, a modo de índice rápido de todo el repositorio.

| Artefacto                                         | Ubicación                                                                                          | Contenido, según la rúbrica                                                                                                                                                                                                                |
| ------------------------------------------------- | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Extensión del modelo verbal                       | Wiki: `01-Extension-Modelo-Verbal`                                                                 | Funcionalidad adicional no contemplada explícitamente en el enunciado, junto con el requisito de calidad asociado, señaladas como decisión del equipo.                                                                                     |
| Tailoring de requisitos (referencia)              | Wiki: `02a-Tailoring-Normativo-Requisitos`                                                         | Ejemplo resuelto de _tailoring_ de ISO/IEC/IEEE 12207 y CMMI, articulado con BABOK v3, para el proceso de requisitos. Material de referencia, no es un entregable evaluable por sí mismo.                                                  |
| Actores                                           | Wiki: `02b-Actores`                                                                                | Actores y roles mencionados o inferibles del modelo verbal y de su extensión.                                                                                                                                                              |
| Necesidades del negocio                           | Wiki: `02c-Necesidades-Negocio`                                                                    | El porqué de alto nivel del proyecto: qué problema de negocio resuelve.                                                                                                                                                                    |
| Necesidades de los interesados                    | Wiki: `02d-Necesidades-Interesados`                                                                | Necesidades derivadas de los actores y de las necesidades de negocio: qué requiere cada actor para que la necesidad de negocio se satisfaga.                                                                                               |
| Requisitos de interfaz                            | Wiki: `02e-Requisitos-Interfaz`                                                                    | Interacciones con otros sistemas o servicios mencionados o inferidos (APIs, pasarelas de pago, notificaciones, etc.).                                                                                                                      |
| Requisitos funcionales/no funcionales             | Issues: módulos (`tipo:modulo`, issues padre) y requisitos (`tipo:funcional` / `tipo:no-funcional`, sub-issues) + Project, vista **Registro de Requisitos** | Requisitos de solución: funcionales, agrupados por módulo del sistema, y no funcionales.                                                                                                                                                   |
| Mapa de procesos (completo)                       | Wiki: `03a-Mapa-Procesos-Caracterizacion`                                                           | Selección justificada de los procesos del ciclo de vida (estratégicos, de apoyo y clave), con su desglose de Entradas, Actividades, Salidas y Recursos, y el diagrama del mapa de procesos resultante.                                     |
| Mapa de procesos (clave, generado)                | `docs/mapa-procesos.md`                                                                            | Representación interactiva, generada por el workflow de GitHub Actions, de las Entradas, Actividades, Salidas y Recursos de los procesos clave seleccionados.                                                                              |
| Tailoring de planificación (referencia)           | Wiki: `04a-Tailoring-Normativo-Planificacion-Proyecto`                                             | Ejemplo resuelto de _tailoring_ de ISO/IEC/IEEE 12207 y CMMI para el proceso de planificación del proyecto. Material de referencia, no es un entregable evaluable por sí mismo.                                                            |
| Alcance, EDT y entregables                        | Wiki: `04b-Declaracion-Alcance`                                                                    | Objetivos, restricciones, declaración de alcance (qué entra y qué no entra en el proyecto) y Estructura de Desglose del Trabajo (EDT/WBS), con su diagrama correspondiente.                                                                |
| Modelo de ciclo de vida                           | Wiki: `04c-Modelo-Ciclo-Vida`                                                                      | Definición formal y justificada del modelo de ciclo de vida del proyecto, a partir del mapa de procesos del Paso 3, con su representación gráfica.                                                                                         |
| Introducción a gestión de riesgos                 | Wiki: `05a-Intro-Gestion-Riesgos`                                                                   | _Tailoring_ de ISO/IEC/IEEE 12207 y CMMI aplicado a la gestión de riesgos, con cita textual de las cláusulas seleccionadas, e introducción de cómo el equipo la abordará.                                                                  |
| Registro de riesgos                               | Issues (label `riesgo`) + Project, vista **Registro de Riesgos**                                   | Riesgos identificados, documentados con causa, efecto, responsable, análisis cualitativo (probabilidad × impacto) y plan de acción, consolidados como línea base de riesgos del proyecto.                                                  |
| Introducción a estimación + FPA/Planning Poker    | Wiki: `06a-Intro-Estimacion`                                                                        | _Tailoring_ de ISO/IEC/IEEE 12207 y CMMI aplicado a la estimación, el cronograma y el presupuesto, con cita textual de las cláusulas seleccionadas; estimación de esfuerzos mediante Análisis de Puntos de Función (FPA) y Planning Poker. |
| Cronograma, PERT y ruta crítica                   | Issues (label `actividad`) + Project, vista **Roadmap**                                            | Cronograma por hitos y actividades, con estimación PERT (optimista, más probable, pesimista), análisis de ruta crítica y diagrama de Gantt.                                                                                                |
| Presupuesto y curva S                             | Wiki: `06b-Presupuesto-Curva-S`                                                                     | Presupuesto con reservas de contingencia y de gestión, integrado en una tabla o gráfico de curva S.                                                                                                                                        |
| Aplicación normativa (identificación y selección) | Wiki: `07a-Aplicacion-Normativa`                                                                   | Identificación de los procesos involucrados en la gestión de calidad, riesgos y ruta crítica, y selección justificada de un mínimo de tres procesos críticos, siguiendo el principio de Pareto.                                            |
| Caracterización de procesos (una por proceso)     | Wiki: `07b-Molde-Caracterizacion-Proceso` (molde, no se modifica) y una página por proceso (`07c-Proceso-<Nombre>`, `07d-Proceso-<Nombre>`, ...)                  | Caracterización de cada proceso seleccionado según ISO/IEC/IEEE 12207 y CMMI, con cita textual de cada cláusula, y narrativa de implementación que integra explícitamente todos los elementos seleccionados.                               |
| PMP                                               | Wiki: `08a-PMP`                                                                                    | Estructura del Plan de Gestión del Proyecto según la ISO 16326:2009, con la cobertura explícita de cada sección de la norma a partir de lo desarrollado en los Pasos 1 a 7.                                                                |
| Contrato                                          | Wiki: `08b-Contrato`                                                                               | Contrato del proyecto, según la forma y estructura explicada en clase.                                                                                                                                                                     |

> **Nota:** cualquier página de wiki nueva que se genere durante el proyecto (por ejemplo, al duplicar el molde de caracterización del Paso 7 para procesos adicionales) debe añadirse **tanto a este índice como a la barra de navegación** (`_Sidebar.md`). Un artefacto que no aparece en ninguno de los dos lugares se considera, a efectos prácticos, inexistente para quien lo califica.
