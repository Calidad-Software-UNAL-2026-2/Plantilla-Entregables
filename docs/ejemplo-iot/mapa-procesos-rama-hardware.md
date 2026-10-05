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

