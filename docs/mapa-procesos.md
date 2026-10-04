# Mapa de Procesos y Modelo de Ciclo de Vida

> Generado con el workflow paralelo: Requisitos se ejecuta primero;
> luego la rama de Hardware/Firmware (3 procesos) y la rama de
> Software/Backend (2 procesos) se ejecutan de forma simultánea; al
> final, Integración y despliegue une ambas ramas a este documento.
> La definición formal del modelo de ciclo de vida se documenta en
> la wiki, página `04c-Modelo-Ciclo-Vida`, no en este archivo.

## Proceso: Requisitos

- **Entradas:** Modelo verbal extendido, necesidades de negocio e interesados
- **Actividades:** Elicitación, análisis y especificación de requisitos, tanto para el dispositivo (Hardware) como para la plataforma (Software)
- **Salidas:** Documento de especificación de requisitos
- **Recursos:** BABOK v3, entrevistas/supuestos del equipo

## Rama Hardware / Firmware

### Proceso: Diseño de hardware y selección de componentes

- **Entradas:** Requisitos funcionales de sensado/actuación; restricciones de consumo energético y costo
- **Actividades:** Selección de sensores y actuadores, diseño del esquemático y la PCB, definición de la arquitectura eléctrica del dispositivo
- **Salidas:** Esquemático aprobado, lista de materiales (BOM), prototipo de placa
- **Recursos:** Software de diseño electrónico (KiCad/Altium), catálogo de componentes, datasheets de fabricantes

### Proceso: Desarrollo de firmware

- **Entradas:** Esquemático y BOM aprobados (proceso anterior); requisitos funcionales de sensado/actuación
- **Actividades:** Programación del microcontrolador, implementación de drivers de sensores, integración del protocolo de comunicación (LoRaWAN)
- **Salidas:** Firmware compilado y versionado; documentación de pines y del protocolo usado
- **Recursos:** IDE de firmware (Arduino), kit de desarrollo del microcontrolador, especificación del protocolo elegido

### Proceso: Pruebas de integración hardware

- **Entradas:** Prototipo de placa (proceso 1); firmware compilado (proceso 2)
- **Actividades:** Pruebas de banco (consumo eléctrico, rango de sensado, estabilidad de la comunicación), ajustes de calibración
- **Salidas:** Reporte de pruebas de hardware; lista de defectos y ajustes de calibración
- **Recursos:** Banco de pruebas, multímetro/osciloscopio, dispositivo prototipo

## Rama Software / Backend

### Proceso: Desarrollo de API y backend de ingesta de datos

- **Entradas:** Protocolo de comunicación acordado con el equipo de Hardware (decisión de diseño temprana, no una dependencia de CI); requisitos de interfaz (Paso 2)
- **Actividades:** Diseño del endpoint de ingesta, implementación del backend, definición del esquema de la base de datos de telemetría
- **Salidas:** API de ingesta desplegada en entorno de pruebas; esquema de base de datos
- **Recursos:** Framework backend elegido por el equipo, base de datos de series de tiempo, entorno de pruebas

### Proceso: Desarrollo del dashboard de monitoreo

- **Entradas:** API de ingesta (proceso anterior); requisitos funcionales de visualización (Paso 2)
- **Actividades:** Diseño de las vistas de monitoreo, consumo de la API, despliegue del dashboard
- **Salidas:** Dashboard funcional en entorno de pruebas
- **Recursos:** Framework frontend elegido por el equipo, librería de gráficos

## Proceso: Integración y despliegue

- **Entradas:** Firmware probado y reporte de pruebas de hardware (rama Hardware); dashboard funcional en entorno de pruebas (rama Software)
- **Actividades:** Conexión del dispositivo físico al backend desplegado, validación end-to-end del flujo de datos (sensor → firmware → API → dashboard), ajustes finales de configuración
- **Salidas:** Sistema IoT integrado y validado end-to-end
- **Recursos:** Dispositivo prototipo, entorno de backend/dashboard desplegado, plan de pruebas de integración

