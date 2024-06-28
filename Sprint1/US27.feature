Feature: Registro de condutor

Scenario: Registro exitoso de un nuevo conductor
Given que un administrador está en la sección de registro de conductores
When ingresa todos los datos requeridos del conductor (nombre, licencia, experiencia, etc.)
Then el sistema registra al nuevo conductor
And muestra una confirmación con un resumen de los datos registrados

Scenario: Validación de licencia de conductor
Given que un administrador está registrando un nuevo conductor
When ingresa un número de licencia de conducir
Then el sistema verifica la validez de la licencia
And solo permite completar el registro si la licencia es válida

Scenario: Actualización de datos de un conductor existente
Given que un administrador selecciona un conductor existente
When modifica alguno de los datos del conductor
Then el sistema actualiza la información del conductor
And muestra un mensaje de confirmación de la actualización