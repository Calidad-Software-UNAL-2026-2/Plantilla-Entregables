# Paso 2 — Tailoring normativo del proceso de requisitos

> **Tipo de documento:** material de referencia del curso. Muestra, con un caso ilustrativo, cómo se espera que se aplique y se adapte (*tailoring*) la normativa al proceso de requisitos iniciales. Puede usarlo como modelo para sus propios ejercicios de *tailoring* de los Pasos 5, 6 y 7.

---

## 1. Introducción

### 1.1 Propósito del documento

Este documento describe cómo se lleva a cabo, bajo criterios normativos, el proceso de **requisitos iniciales** del proyecto (Paso 2 de la Entrega 1). Su resultado es una **especificación de requisitos de alto nivel** que formaliza las necesidades del sistema y culmina en una **línea base de requisitos aprobada**, sobre la cual se apoyarán las etapas posteriores del ciclo de vida: alcance, diseño, implementación, pruebas y mantenimiento.



### 1.2 Documentos complementarios de esta sección *(En caso de que se requieran)*

| Página / artefacto | Qué contiene | Relación con este documento |
|---|---|---|
| [[01-Extension-Modelo-Verbal]] | Extensión del modelo verbal | Insumo principal de la elicitación |
| [[02b-Actores]] | Actores y roles | Resultado de la identificación de interesados |
| [[02c-Necesidades-Negocio]] | Necesidades del negocio | Requisitos de negocio (BABOK) |
| [[02d-Necesidades-Interesados]] | Necesidades de los interesados | Requisitos de los interesados (BABOK) |
| Issues + vista **Registro de Requisitos** | Requisitos funcionales y no funcionales | Requisitos de solución (BABOK) |
| [[02e-Requisitos-Interfaz]] | Interacciones con otros sistemas | Requisitos de interfaz (CMMI SP 2.3) |
| [[03-Mapa-Procesos-Caracterizacion]] | Mapa de procesos | Ubica este proceso dentro del conjunto de procesos del proyecto |

---
## 2. Uso y adaptación de las normas (*tailoring*)

### 2.1 ISO/IEC/IEEE 12207:2017 — Proceso 6.4.2

**Contexto que justifica la adaptación.** El proyecto es académico: parte de un enunciado acotado y no hay interesados reales con quienes interactuar. Por ello se aplican las actividades que pueden ejecutarse con la información disponible y se omiten las que dependen de escenarios de uso complejos o de negociación externa.

| Actividad de 6.4.2.3 | Decisión | Justificación |
|---|---|---|
| **a) Preparación** (tareas a.1 a a.4: identificar interesados, definir la estrategia, identificar y planificar los sistemas habilitantes, obtener acceso a ellos) | **Se aplica completa** | Sin preparación no hay estrategia de elicitación ni actores identificados. GitHub se declara como sistema habilitante. |
| **b) Definición de necesidades**: b.2 (identificar necesidades) y b.4 (definir necesidades) | **Se aplica** | Traduce los problemas del enunciado en capacidades que el sistema debe ofrecer. |
| b.1 (contexto de uso) y b.3 (priorización de necesidades) | **No se aplica** | Exigen información de contexto y criterios de negocio que el enunciado no proporciona. |
| c) Concepto operativo y otros conceptos de ciclo de vida | **No se aplica** | No hay información suficiente sobre escenarios complejos de uso. |
| **d) Transformación de necesidades en requisitos** | **Parcial** | Se limita a la redacción en formatos estructurados, que habilitan la posterior estimación de esfuerzos. |
| e) Análisis de requisitos | **No se aplica** | La negociación con interesados externos se sustituye por una revisión de consistencia lógica interna a cargo del equipo. |
| **f) Gestión de la definición de requisitos** | **Parcial: solo línea base** | Se ejecuta únicamente la tarea de establecer la línea base. |

### 2.2 CMMI — Objetivo y prácticas genéricas

Se persigue **GG 2 Institucionalizar un proceso administrado**, porque el propósito de esta adaptación normativa es que el proceso de requisitos sea planificado, dotado de recursos y asignado a responsables, y no dependa de la capacidad individual de algún integrante.

| Práctica genérica | Qué exige | Cómo se cumple en el proyecto |
|---|---|---|
| **GP 2.2 Planificar el proceso** | Definir cómo se ejecutará el proceso | En este caso usa el plan breve de la rúbrica del proyecto *(Para los demás procesos deberán redactarlo como un apartado más de este mismo documento)* con pasos secuenciales y criterio de salida |
| **GP 2.3 Proveer recursos** | Disponer de los recursos para ejecutarlo | GitHub como sistema habilitante, tiempo de trabajo del equipo y documentos de referencia |
| **GP 2.4 Asignar responsabilidades** | Designar responsables | Los responsables (Rol o Persona) son caracterizados en la narrativa de implementación |
| **GP 2.6 Administrar la configuración** | Controlar versiones y líneas base | Historial de la wiki y de los Issues; línea base aprobada por el equipo |
| **GP 2.7 Identificar e involucrar a los interesados** | Determinar quiénes intervienen y cómo | Interesados hipotéticos; el docente o monitor aclara dudas |

*Prácticas genéricas no seleccionadas:* GP 2.1 (dado el alcance de la entrega, no se detallan aspectos organizacionales), GP 2.5 (el entrenamiento realmente depende de las necesidades del proyecto y de la capacidad de los recursos disponibles en un contexto de implementación hipotético, en este caso, decidí omitirlo, pero si en algún proceso lo consideran pertinente, pueden añadirlo, eso sí, recuerden incluirlo de forma explícita en la narrativa de implementación), GP 2.8 (el monitoreo y control de procesos no se abordará en esta entrega), GP 2.9 (se justifica su omisión de forma similar a la GP 2.5) y GP 2.10 (Va muy de la mano con el GP 2.8, por lo tanto, opté por eliminarlo).

### 2.3 CMMI — Área de proceso Desarrollo de Requerimientos (RD)

Esta área produce y analiza los requerimientos del cliente, del producto, y de las componentes del producto. Se seleccionan dos objetivos específicos y cinco prácticas:

| Objetivo / práctica | Aplicación |
|---|---|
| **SG 1 Desarrollar Requerimientos del Cliente** | Aplica |
| SP 1.1 Relevar Necesidades | Aplica: relevamiento a partir del enunciado y de su extensión |
| SP 1.2 Desarrollar los Requerimientos del Cliente | Aplica: necesidades expresadas como requisitos de negocio y de los interesados |
| **SG 2 Desarrollar los Requerimientos del Producto** | Aplica |
| SP 2.1 Establecer Requerimientos del Producto y sus Componentes | Aplica: requisitos funcionales y no funcionales |
| SP 2.2 Asignar Requerimientos a las Componentes del Producto | Aplica **con profundidad acotada**: solo agrupación lógica por módulo, sin asignar a componentes de arquitectura |
| SP 2.3 Identificar Requerimientos de Interfaz | Aplica **con profundidad acotada**: identificación de las interacciones con otros sistemas, sin especificación técnica del protocolo |
| SG 3 Analizar y Validar Requerimientos (SP 3.1 a SP 3.5) | **No se aplica**: es coherente con la omisión de las actividades c) y e) de la ISO 12207 |

---

## 3. Narrativa de implementación: cómo se lleva a cabo el proceso

> **Caso ilustrativo.** *Consultora Nova*, un equipo de cinco personas (Ana, Bruno, Carla, Diego y Elena), responde a una licitación de la **Clínica Veterinaria Huellitas**. El modelo verbal indica que la clínica quiere "un sistema para que los dueños agenden citas y los veterinarios consulten el historial de sus pacientes". Entre paréntesis se indica la cláusula que respalda cada decisión.

### 3.1 Institucionalización: un proceso planificado, con recursos y responsables

Antes de leer el enunciado con detalle, Nova decidió que la gestión de sus requisitos no dependería de la buena voluntad de cada integrante, sino de un proceso administrado, es decir, el objetivo genérico **GG 2 Institucionalizar un proceso administrado** del CMMI. Ana redactó en la wiki un plan de una página con los pasos que se seguirían, su orden y el criterio de salida, que sería una línea base de requisitos aprobada por todo el equipo (**GP 2.2 Planificar el proceso**). El equipo declaró como recursos el repositorio de GitHub, tres sesiones de trabajo de dos horas y los fabulosos y actualizados documentos guía del curso Calidad de Software (**GP 2.3 Proveer recursos**). Finalmente, se repartieron las responsabilidades: Bruno se encargó de actores, Carla de necesidades, Diego de requisitos funcionales y Elena de requisitos no funcionales e interfaces, mientras Ana coordinaba la revisión (**GP 2.4 Asignar responsabilidades**).

### 3.2 Preparación: interesados, estrategia y sistema habilitante

Con el proceso planificado, el equipo ejecutó la actividad de **Preparación** de la ISO 12207 (**6.4.2.3 a**). En primer lugar, identificó las clases de interesados con interés legítimo en el sistema (**a.1**): los dueños de mascotas, los veterinarios, el personal de recepción y la administración de la clínica. Como el ejercicio es académico, estos interesados son hipotéticos, de modo que Nova aplicó la técnica de lista y mapa de interesados de **BABOK 3.2** para dejarlos documentados en la página de actores. Además, decidió cómo los involucraría (**GP 2.7 Identificar e involucrar a los interesados**): el docente o monitor del curso (o la IA) respondería las dudas como si fuera el cliente, con el fin de verificar que sus necesidades esten debidamente representadas (No hay problema en usar IA para esto, siempre y cuando lo hagan de forma responsable).

En segundo lugar, se definió la estrategia (**a.2**). Siguiendo **BABOK 4.1 Preparar la elicitación** y la práctica **CMMI SP 1.1 Relevar Necesidades**, el equipo eligió como técnica principal el análisis de documentos, aplicado al enunciado y a su propia extensión, y acordó qué preguntas dejaría abiertas para el docente/monitor(/IA). En tercer lugar, identificó y planificó los sistemas habilitantes (**a.3**) y obtuvo acceso a ellos (**a.4**): GitHub, con su wiki para documentar, los Issues para registrar cada requisito y un Project para visualizarlos, con el acceso garantizado a los cinco integrantes.

### 3.3 Necesidades: del enunciado a las necesidades del negocio y de los interesados

Aplicando **CMMI SP 1.1 Relevar Necesidades**, el equipo leyó el enunciado subrayando cada problema mencionado. En el marco de **ISO 6.4.2.3 b.2 (identificar las necesidades)**, esos problemas se convirtieron en una lista de necesidades, que luego se contrastó con el docente/monitor(/IA) en una sesión corta de aclaración, lo que corresponde a **BABOK 4.2 Conducir la elicitación** y **4.3 Confirmar los resultados de la elicitación**. Con la clasificación de **BABOK 2.3**, Nova separó las necesidades del negocio, como "reducir las citas perdidas por llamadas no atendidas", que registró en la página correspondiente, de las necesidades de los interesados, como "el dueño necesita reservar sin llamar por teléfono".

Después, siguiendo **ISO 6.4.2.3 b.4 (definir las necesidades)** y **CMMI SP 1.2 Desarrollar los Requerimientos del Cliente**, el equipo redactó cada necesidad de forma clara y autocontenida, de modo que pudiera convertirse en un requisito sin ambigüedad. El equipo omitió deliberadamente la formalización del contexto de uso (**b.1**) y la priorización de necesidades (**b.3**), porque el enunciado no aporta suficiente información para fundamentarlas.

### 3.4 Transformación en requisitos estructurados

La transformación de necesidades en requisitos (**ISO 6.4.2.3 d**, aplicada de forma parcial) se limitó a redactarlos en un formato estructurado. Con **CMMI SP 2.1 Establecer Requerimientos del Producto y sus Componentes** y **BABOK 7.1 Especificar y modelar requisitos**, Diego y Elena crearon un Issue por requisito con los formularios de la plantilla. Por ejemplo, un requisito funcional fue "el sistema permitirá al dueño reservar una cita eligiendo veterinario, fecha y hora", del módulo *Agenda*, con origen en la necesidad "reservar sin llamar por teléfono". Un requisito no funcional fue "el sistema de reservas estará disponible durante todo el horario de atención de la clínica", clasificado como disponibilidad. Con estos formularios, cada requisito quedó descrito con módulo, descripción y origen, lo que después facilitará estimar el esfuerzo.

Luego aplicaron **CMMI SP 2.2 Asignar Requerimientos a las Componentes del Producto**, con profundidad acotada: como todavía no existe una arquitectura, aplicaron la técnica de descomposición funcional de BABOK y agruparon los requisitos con etiquetas de módulo (`modulo:agenda`, `modulo:historial`, `modulo:notificaciones`). Con **CMMI SP 2.3 Identificar Requerimientos de Interfaz**, y apoyados en la técnica de análisis de interfaces de BABOK, Elena identificó dos interacciones con sistemas externos, el envío de recordatorios por correo o mensajería y una pasarela de pagos para anticipos, y las dejó registradas en la página de interfaces sin entrar aún en detalles técnicos.

### 3.5 Revisión interna y línea base

Como no había interesados reales con quienes negociar, la actividad de análisis de la ISO (**e**) se sustituyó por una revisión de consistencia lógica interna. Cada integrante leyó las secciones de los demás buscando contradicciones, requisitos sin origen y necesidades sin ningún requisito que las cubra. Superada la revisión, el equipo ejecutó la única tarea de la actividad de gestión que había seleccionado (**ISO 6.4.2.3 f**, parcial): establecer la línea base, mediante mutuo acuerdo entre los integrantes. Desde ese momento, el historial de la wiki y de los Issues permite reconstruir qué se aprobó y cualquier cambio posterior debe justificarse con un comentario en el Issue del requisito, lo que cumple **GP 2.6 Administrar la configuración**.

### 3.6 Resultado

Al terminar, Nova contaba con actores identificados, necesidades de negocio e interesados documentadas, requisitos funcionales y no funcionales registrados y agrupados por módulo, interacciones externas identificadas y una línea base aprobada por los cinco integrantes. Además, el proceso quedó documentado, con responsables y recursos, de modo que otra persona del equipo podría repetirlo: esa es precisamente la diferencia entre "hacer requisitos" y tener un proceso de requisitos administrado (**GG 2**). Esta línea base es el insumo directo para el alcance, la estimación y el cronograma de los pasos siguientes.

---

## 4. Del ejemplo a su propio trabajo

Para sus ejercicios de *tailoring* (Pasos 5, 6 y 7), repitan esta estructura:

1. **Introduzcan** el proceso y sus documentos complementarios.
2. **Adapten** cada norma con una tabla de decisiones (se aplica / parcial / no se aplica) y **justifiquen** cada decisión.
3. **Narren** cómo se ejecutaría el proceso en un caso concreto, citando cada cláusula seleccionada.
