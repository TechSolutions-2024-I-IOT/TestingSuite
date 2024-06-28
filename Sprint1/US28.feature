Feature: Registro de bus

Scenario: Registro exitoso de un nuevo bus
Given que un administrador accede al formulario de registro de buses
When ingresa toda la información requerida del bus (número de unidad, capacidad, tipo, etc.)
Then el sistema registra el nuevo bus en la base de datos
And muestra una confirmación con los detalles del bus registrado

Scenario: Asignación de conductor a un bus
Given que un administrador ha registrado un nuevo bus
When asigna un conductor disponible al bus
Then el sistema vincula el conductor con el bus
And actualiza el estado del conductor como "asignado"

Scenario: Intento de registro de bus con número de unidad duplicado
Given que un administrador está registrando un nuevo bus
When ingresa un número de unidad que ya existe en el sistema
Then el sistema muestra un mensaje de error
And no permite completar el registro del bus