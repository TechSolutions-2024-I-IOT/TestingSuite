Feature: Registro de Schedules

Scenario: Registro exitoso de un nuevo horario
Given que un administrador está autenticado en el sistema
When ingresa los detalles de un nuevo horario para una ruta de bus
Then el sistema registra el nuevo horario
And muestra un mensaje de confirmación

Scenario: Actualización de un horario existente
Given que un administrador selecciona un horario existente
When realiza cambios en los detalles del horario
Then el sistema actualiza el horario con la nueva información
And notifica a los usuarios afectados por el cambio

Scenario: Eliminación de un horario
Given que un administrador selecciona un horario que ya no es necesario
When elige la opción de eliminar el horario
Then el sistema elimina el horario de la base de datos
And muestra una confirmación de la eliminación