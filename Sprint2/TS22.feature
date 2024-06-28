Feature: Registro de Conductor de un Transport Company

Scenario: Registro exitoso de un nuevo conductor
Given que un administrador de Transport Company está autenticado en el sistema
When ingresa los datos del nuevo conductor (nombre, licencia, experiencia, etc.)
Then el sistema registra al conductor y lo asocia con la Transport Company
And muestra un mensaje de confirmación con los detalles del conductor registrado

Scenario: Intento de registro con licencia inválida
Given que un administrador está registrando un nuevo conductor
When ingresa un número de licencia que no es válido o ha expirado
Then el sistema muestra un mensaje de error
And no permite completar el registro del conductor

Scenario: Actualización de datos de un conductor existente
Given que un administrador selecciona un conductor existente de su Transport Company
When modifica alguno de los datos del conductor
Then el sistema actualiza la información del conductor
And muestra un mensaje de confirmación de la actualización