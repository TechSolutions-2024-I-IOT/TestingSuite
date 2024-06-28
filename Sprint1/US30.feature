Feature: Creación de horarios de salida

Scenario: Creación de horario de salidas para una ruta
Given que un administrador de horarios está en la sección de creación de horarios
When selecciona una ruta y especifica los horarios de salida para diferentes días de la semana
Then el sistema registra los nuevos horarios de salida para esa ruta
And muestra una confirmación con el resumen de los horarios creados

Scenario: Modificación de horarios existentes
Given que un administrador selecciona un horario existente
When realiza cambios en los tiempos de salida o agrega nuevas salidas
Then el sistema actualiza los horarios con los cambios realizados
And notifica a los usuarios suscritos a esa ruta sobre los cambios en los horarios

Scenario: Creación de horarios especiales para días festivos
Given que un administrador está creando horarios para una ruta
When selecciona una fecha especial o festiva
And define horarios diferentes a los regulares para ese día
Then el sistema registra los horarios especiales para la fecha seleccionada
And muestra estos horarios de manera distintiva en las consultas de los usuarios