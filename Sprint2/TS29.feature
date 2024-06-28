Feature: Creación de un Schedule de un Transport Company

Scenario: Creación exitosa de un nuevo horario
Given que un planificador de Transport Company está en la sección de creación de horarios
When ingresa los detalles del nuevo horario (ruta, frecuencia, horas de operación)
Then el sistema crea el nuevo horario y lo asocia con la Transport Company
And muestra una confirmación con el resumen del horario creado

Scenario: Modificación de un horario existente
Given que un planificador selecciona un horario existente
When realiza cambios en los tiempos o frecuencias
Then el sistema actualiza el horario con los cambios realizados
And notifica a los usuarios afectados sobre los cambios en el horario

Scenario: Creación de horario con variaciones por día de la semana
Given que un planificador está creando un nuevo horario
When especifica diferentes frecuencias o tiempos para distintos días de la semana
Then el sistema permite la creación de un horario variable
And muestra una vista previa del horario semanal completo