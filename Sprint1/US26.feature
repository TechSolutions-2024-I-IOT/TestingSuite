Feature:  Registro de unidad de bus

Scenario: Registro exitoso de una nueva unidad de bus
Given que un administrador está autenticado en el sistema
When ingresa los detalles de una nueva unidad de bus (placa, modelo, capacidad, etc.)
Then el sistema registra la nueva unidad de bus
And muestra un mensaje de confirmación con los detalles registrados

Scenario: Intento de registro con datos incompletos
Given que un administrador está en la página de registro de unidades de bus
When intenta registrar una nueva unidad sin completar todos los campos obligatorios
Then el sistema muestra un mensaje de error
And indica qué campos son necesarios para completar el registro

Scenario: Registro de unidad de bus duplicada
Given que un administrador intenta registrar una nueva unidad de bus
When ingresa un número de placa que ya existe en el sistema
Then el sistema muestra un mensaje de error indicando que la unidad ya está registrada
And no permite completar el registro