# Paso 4 — Tailoring normativo de planificación del proyecto

> **Tipo de documento:** material de referencia del curso. Muestra, con el mismo caso ilustrativo del Paso 2, cómo se espera que se aplique y se adapte (*tailoring*) la normativa al proceso de planificación del proyecto. Puede usarlo como modelo para sus propios ejercicios de *tailoring* de los Pasos 5, 6 y 7.

---

## 1. Introducción

### 1.1 Propósito del documento

Este documento describe cómo se lleva a cabo, bajo criterios normativos, el proceso de **planificación del proyecto** (Paso 4 de la Entrega 1). Toma como insumo la línea base de requisitos aprobada en el Paso 2 y el mapa de procesos caracterizado en el Paso 3, y su resultado es la **declaración de alcance**, la **Estructura de Desglose del Trabajo (EDT/WBS)** y la **selección formal del modelo de ciclo de vida** del proyecto — la base sobre la cual se apoyarán la estimación, el cronograma y el presupuesto del Paso 6.

### 1.2 Documentos complementarios de esta sección *(En caso de que se requieran)*

| Página / artefacto | Qué contiene | Relación con este documento |
|---|---|---|
| [[02a-Tailoring-Normativo-Requisitos]] | Tailoring del proceso de requisitos | Insumo: línea base de requisitos aprobada |
| [[03a-Mapa-Procesos-Caracterizacion]] | Mapa de procesos (estratégicos, de apoyo y clave) | Insumo directo para la selección del modelo de ciclo de vida |
| [[04b-Declaracion-Alcance]] | Alcance, entregables y EDT/WBS | Resultado de este proceso |
| [[04c-Modelo-Ciclo-Vida]] | Modelo de ciclo de vida seleccionado y justificado | Resultado de este proceso |

---

## 2. Uso y adaptación de las normas (*tailoring*)

### 2.1 ISO/IEC/IEEE 12207:2017 — Proceso 6.3.1 Planificación del Proyecto

**Contexto que justifica la adaptación.** Se integra estratégicamente el proceso 6.3.1 para consolidar el puente entre los requisitos técnicos ya establecidos en el Paso 2 y la gestión de la ingeniería que arranca en este paso. De sus tres actividades, se ejecuta de manera exhaustiva la primera (*Define the project*), por ser la que materializa el alcance en componentes gestionables; las dos restantes se omiten deliberadamente, cada una por una razón distinta.

| Actividad y tarea de 6.3.1.3 | Decisión | Justificación |
|---|---|---|
| **a) Definir el proyecto** — tarea 1: Identificar los objetivos y las restricciones del proyecto | **Se aplica** (A modo de consolidado) | Es necesario declarar qué se busca lograr (desempeño, costo, tiempo, satisfacción del cliente) y qué límites existen (Restricciones de gestión o tecnológicas identificadas del modelo verbal y su extensión), de modo que las decisiones posteriores tengan un criterio explícito contra el cual contrastarse, en vez de apoyarse en supuestos implícitos |
| a) tarea 2: Definir el alcance del proyecto tal como quedó establecido en el acuerdo | **Se aplica** | Delimitar qué es y qué no es parte del proyecto evita la ambigüedad sobre qué se va a construir y previene que el equipo asuma compromisos que no puede sostener con los recursos y el tiempo disponibles |
| a) tarea 3: Definir y mantener un modelo de ciclo de vida compuesto por etapas | **Se aplica** | Seleccionar un modelo de ciclo de vida obliga a decidir explícitamente en qué orden y bajo qué relación se ejecutarán los procesos técnicos del proyecto, lo que permite anticipar dependencias entre actividades antes de comenzar a ejecutarlas |
| a) tarea 4: Establecer una Estructura de Desglose del Trabajo (EDT), basada en los productos entregables o en la arquitectura evolutiva del sistema | **Se aplica** | Descomponer los entregables en paquetes de trabajo manejables permite estimar, asignar y dar seguimiento al esfuerzo en unidades concretas, en vez de tratar el proyecto como un bloque monolítico difícil de planificar o medir |
| a) tarea 5: Definir y mantener los procesos que se aplicarán en el proyecto | **Se aplica** | Esta es la tarea que da origen al ejercicio mismo de *tailoring*: declarar explícitamente qué procesos, de cuáles normas, se seguirán y con qué alcance evita aplicar la normativa de forma mecánica o indiscriminada, y dirige el esfuerzo del equipo hacia lo que el proyecto realmente necesita |
| **b) Planificar la gestión del proyecto y la gestión técnica** (cronograma, hitos, costos, roles, infraestructura, adquisiciones, plan consolidado) | **No se aplica en este documento** | Se abordará en el Paso 6, una vez que el alcance, la EDT y el modelo de ciclo de vida — productos de la actividad a) — estén definidos y puedan usarse como entrada para realizar la estimación de esfuerzos, cronograma y presupuesto |
| **c) Activar el proyecto** (aprobación de inicio, solicitud de recursos, implementación de los planes) | **No se aplica** | Supone la aprobación formal y el arranque de la ejecución real del proyecto por parte de una organización, lo cual no entra en el alcance de esta entrega, centrada en la planificación inicial |

### 2.2 CMMI — Objetivo y prácticas genéricas

Se persigue el mismo objetivo genérico que en el Paso 2, **GG 2 Institucionalizar un proceso administrado**, con las mismas cinco prácticas, más una adicional propia de este paso.

| Práctica genérica | Qué exige | Cómo se cumple en el proyecto |
|---|---|---|
| **GP 2.2 Planificar el proceso** | Definir cómo se ejecutará el proceso | En este caso usa el plan breve de la rúbrica del proyecto con pasos secuenciales y criterio de salida |
| **GP 2.3 Proveer recursos** | Disponer de los recursos para ejecutarlo | GitHub como sistema habilitante, tiempo de trabajo del equipo y el mapa de procesos del Paso 3 |
| **GP 2.4 Asignar responsabilidades** | Designar responsables | Los responsables (rol o persona) son caracterizados en la narrativa de implementación |
| **GP 2.6 Administrar la configuración** | Controlar versiones y líneas base | Historial de la wiki; la declaración de alcance, la EDT y el modelo de ciclo de vida quedan como línea base (*Scope Baseline*) |
| **GP 2.7 Identificar e involucrar a los interesados** | Determinar quiénes intervienen y cómo | Interesados hipotéticos ya identificados en el Paso 2; el docente/monitor(/IA) aclara dudas |
| **GP 2.10 Revisar el estado con la alta gerencia** | Presentar el estado del proceso a un nivel superior de decisión | El equipo presenta el alcance, la EDT y el modelo de ciclo de vida al docente/monitor (que, en el escenario de la licitación, cumple el rol de la alta gerencia/comité evaluador) antes de darlo por consolidado |

*Prácticas genéricas no seleccionadas:* GP 2.1 (dado el alcance de la entrega, no se detallan aspectos organizacionales), GP 2.5 (el entrenamiento depende de las necesidades del proyecto y de la capacidad de los recursos disponibles en un contexto hipotético; se omite, pero si en algún proceso lo consideran pertinente, pueden añadirlo, incluyéndolo de forma explícita en la narrativa de implementación), GP 2.8 (el monitoreo y control de procesos no se aborda en esta entrega) y GP 2.9 (se justifica su omisión de forma similar a la GP 2.5).

### 2.3 CMMI — Área de proceso Planificación del Proyecto (PP)

Esta área de proceso establece y mantiene el plan que será empleado para ejecutar y monitorear el proyecto, sobre la base de los requerimientos ya administrados en el Paso 2. Se seleccionan sus dos primeros objetivos específicos, con una selección acotada de prácticas:

| Objetivo / práctica | Aplicación |
|---|---|
| **SG 1 Establecer estimaciones** | Aplica |
| SP 1.1 Estimar el alcance del proyecto | Aplica: se materializa como la declaración de alcance |
| SP 1.2 Estimar atributos de las tareas y de los productos del proyecto | Aplica **con profundidad acotada**: al nivel de los paquetes de trabajo de la EDT/WBS, sin métricas de tamaño de software |
| SP 1.3 Definir el ciclo de vida del proyecto | Aplica: es, junto con la tarea equivalente de la ISO, el corazón de este documento |
| SP 1.4 Estimar esfuerzo y costo del proyecto | Aplica **de forma preliminar**; el desarrollo detallado con FPA y Planning Poker se ejecuta en el Paso 6 |
| **SG 2 Desarrollar el plan de proyecto** | Aplica parcialmente |
| SP 2.1 Establecer el cronograma y el presupuesto del proyecto | Aplica **de forma preliminar** (los artefactos de trabajo funcionan como marco de referencia); el desarrollo completo con PERT, ruta crítica y Gantt se ejecuta en el Paso 6 |
| SP 2.2 Identificar los riesgos del proyecto | No se aplica: corresponde al Paso 5 |
| SP 2.3 Planificar la administración de datos del proyecto | No se aplica |
| SP 2.4 Planificar recursos necesarios para el proyecto | Aplica: recursos del equipo y herramientas necesarias para ejecutar lo declarado en el alcance |
| SP 2.5 Planificar la adquisición de conocimiento y habilidades | No se aplica |
| SP 2.6 Planificar la participación de los interesados en el proyecto | No se aplica: la gestión de comunicaciones e interesados no forma parte del alcance de esta entrega |
| SP 2.7 Establecer el plan del proyecto | No se aplica en este paso: la consolidación formal del PMP completo se ejecuta en el Paso 8 |
| SG 3 Obtener el compromiso de los interesados acerca del plan de proyecto (SP 3.1 a SP 3.3) | **No se aplica**: se sustituye por la práctica genérica GP 2.10, más liviana y suficiente para el alcance de este ejercicio |

---

## 3. Narrativa de implementación: cómo se lleva a cabo el proceso

> **Caso ilustrativo.** Continúa el caso de *Consultora Nova* (Ana, Bruno, Carla, Diego y Elena) y la **Clínica Veterinaria Huellitas**, ya con la línea base de requisitos del Paso 2 aprobada. Entre paréntesis se indica la cláusula que respalda cada decisión.

### 3.1 Institucionalización: un proceso planificado, con recursos y responsables

Con los requisitos ya aprobados, Nova abrió una nueva etapa del mismo proceso administrado (**GG 2 Institucionalizar un proceso administrado**). Ana volvió a redactar en la wiki un plan breve —esta vez para la planificación del proyecto— con sus pasos, su orden y el criterio de salida: objetivos y restricciones, una declaración de alcance, una EDT y un modelo de ciclo de vida aprobados (**GP 2.2 Planificar el proceso**). Como recursos, el equipo declaró el repositorio de GitHub, el mapa de procesos que Carla y Diego habían terminado en el Paso 3, y dos sesiones adicionales de trabajo (**GP 2.3 Proveer recursos**). Las responsabilidades se repartieron de nuevo: Elena tomó los objetivos, restricciones y el alcance, Bruno la EDT, y Ana y Carla el modelo de ciclo de vida, mientras Diego coordinaba la revisión final (**GP 2.4 Asignar responsabilidades**). Los interesados hipotéticos seguían siendo los mismos del Paso 2 (**GP 2.7**), así que no fue necesario volver a identificarlos.

### 3.2 Declarar qué procesos se aplicarán

Antes de producir cualquier artefacto, el equipo ejecutó explícitamente la tarea 5 de la actividad a) (**definir y mantener los procesos que se aplicarán en el proyecto**): dejó por escrito que, de la ISO 12207, este paso seguiría únicamente la actividad de definir el proyecto, y que las actividades de planificación de la gestión técnica y de activación del proyecto quedaban fuera, la primera porque se retomaría en el Paso 6 y la segunda porque no entraba en el alcance de la entrega. Del CMMI, declaró que seguiría el objetivo genérico GG 2 con las prácticas ya mencionadas, más las específicas de Planificación del Proyecto (PP) que se detallan más adelante. Esta declaración explícita, hecha por escrito, es justamente lo que distingue un *tailoring* razonado de una aplicación mecánica de la norma.

### 3.3 Objetivos y restricciones del proyecto

Con los procesos ya declarados, Elena ejecutó la tarea 1 de la actividad a) (**identificar los objetivos y las restricciones del proyecto**): como objetivo, que la clínica redujera las citas perdidas por llamadas no atendidas; como restricciones, que el proyecto debía completarse dentro del tiempo establecido y bajo las restricciones tecnológicas dados por el modelo verbal. Dejar esto establecido primero le dio al equipo un criterio explícito contra el cual contrastar cada decisión posterior de alcance, EDT y ciclo de vida, en lugar de apoyarse en supuestos implícitos que solo salieran a la luz más adelante.

### 3.4 Definir el proyecto: delimitar el alcance

Con los objetivos y restricciones declarados, Elena continuó con la tarea 2 de la actividad a) (**definir el alcance del proyecto tal como quedó establecido en el acuerdo**), apoyada en **CMMI SP 1.1 Estimar el alcance del proyecto**. Tomó la línea base de requisitos del Paso 2 y la tradujo en una declaración breve de qué entra y qué no entra en el proyecto. Por ejemplo, declaró que el alcance cubría la reserva de citas, el historial clínico y el envío de recordatorios, pero que quedaba fuera de alcance la facturación electrónica ante autoridades tributarias, mencionada tangencialmente en el enunciado (Normalmente, ese tipo de menciones en el enunciado, se podrían considerar como una posible extensión del modelo verbal, en este caso se omitió) pero sin requisitos que la respaldaran.

### 3.5 Definir el proyecto: construir la EDT/WBS

Con el alcance delimitado, Bruno ejecutó la tarea 4 de la actividad a) (**establecer una Estructura de Desglose del Trabajo basada en los productos entregables**), apoyado en **CMMI SP 1.2 Estimar atributos de las tareas y de los productos del proyecto**. Usando el alcance como entrada y los entregables exigidos por la rúbrica (PMP y contrato) como nivel más alto, descompuso el trabajo en paquetes manejables: por ejemplo, dentro del entregable "PMP", un paquete de trabajo para "Especificación de requisitos" y otro para "Cronograma y presupuesto". Bruno construyó el diagrama en la herramienta de su preferencia y lo incrustó como imagen en la página de alcance. No fue necesario aplicar métricas de tamaño de software: bastó con estimar, a nivel de cada paquete de trabajo, qué tan grande era relativo a los demás, para más adelante poder asignarle una actividad de cronograma en el Paso 6.

### 3.6 Definir el proyecto: seleccionar el modelo de ciclo de vida

Con el mapa de procesos del Paso 3 ya terminado, Ana y Carla ejecutaron la tarea 3 de la actividad a) (**definir y mantener un modelo de ciclo de vida compuesto por etapas**), apoyadas en **CMMI SP 1.3 Definir el ciclo de vida del proyecto**. Revisaron el orden y la relación entre los procesos clave que Diego había caracterizado (Requisitos, Diseño, Implementación y Testing) y, dado que el dominio de la clínica no exigía entregas incrementales al cliente, decidieron adoptar un modelo de cascada simple. Documentaron esa decisión en la wiki, explicando el orden de los procesos y por qué ese modelo se ajustaba mejor que uno iterativo al contexto de un proyecto académico de alcance acotado, con su respectivo diagrama.

### 3.7 Un marco preliminar de cronograma, recursos y costo

Con las cinco tareas de la actividad a) completas, el equipo dejó además un marco de referencia preliminar, sin entrar en el detalle que le correspondería a la actividad b) —pospuesta al Paso 6, como se declaró en 3.2—. Con **CMMI SP 1.4 Estimar esfuerzo y costo del proyecto** y **SP 2.1 Establecer el cronograma y el presupuesto del proyecto**, aplicados de forma preliminar, solo para verificar que la EDT y el modelo de ciclo de vida fueran razonables. Con **SP 2.4 Planificar recursos necesarios para el proyecto**, el equipo listó brevemente lo que necesitaría: los cinco integrantes, sus laptops y las herramientas ya declaradas como sistema habilitante — sin planificar adquisición de conocimientos ni participación de interesados, tareas que quedaron fuera de esta entrega (**SP 2.5 y SP 2.6**, no seleccionadas).

### 3.8 Revisión con la alta gerencia y cierre

Antes de dar por cerrado el paso, Nova aplicó **GP 2.10 Revisar el estado con la alta gerencia**: en una sesión breve, el equipo presentó el alcance, la EDT y el modelo de ciclo de vida al docente/monitor del curso (Recuerden que es simplemente un ejemplo, no es obligatorio), quien —en el escenario de la licitación— representa al comité evaluador ante el que la consultora debe responder. De esa revisión surgieron ajustes menores al alcance, que el equipo incorporó antes de continuar. Con los ajustes hechos, el alcance, la EDT y el modelo de ciclo de vida quedaron como la línea base del proyecto (*Scope Baseline*), lo que cumple **GP 2.6 Administrar la configuración**: cualquier cambio posterior a estos tres artefactos debe quedar registrado en el historial de la wiki y justificado explícitamente, no simplemente sobrescrito.

### 3.9 Resultado

Al terminar, Nova había ejecutado íntegramente las cinco tareas de la actividad a) (procesos declarados, objetivos y restricciones, alcance, EDT y modelo de ciclo de vida), dejando explícitamente pospuestas la actividad b) al Paso 6 y la actividad c) fuera del alcance de la entrega. Los tres artefactos centrales quedaron revisados con el docente/monitor y consolidados como línea base. El marco preliminar de cronograma, recursos y costo dejó además el terreno preparado para que el Paso 6 desarrolle en detalle la estimación, el cronograma y el presupuesto, y para que el Paso 8 consolide, ya sin necesidad de reescribirlos, estos mismos artefactos dentro del PMP (**CMMI SP 2.7**, aplicado en ese paso posterior).

---

## 4. Del ejemplo a su propio trabajo

Para sus ejercicios de *tailoring* (Pasos 5, 6 y 7), repitan esta estructura:

1. **Introduzcan** el proceso y sus documentos complementarios.
2. **Adapten** cada norma con una tabla de decisiones (se aplica / parcial / no se aplica) y **justifiquen** cada decisión.
3. **Narren** cómo se ejecutaría el proceso en un caso concreto, citando cada cláusula seleccionada.
