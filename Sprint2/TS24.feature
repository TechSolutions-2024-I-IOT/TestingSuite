Feature: Registro de bus para un Transport Company

Scenario: Registro exitoso de un nuevo bus
Given que un administrador de Transport Company está en la sección de registro de buses
When ingresa los detalles del nuevo bus (número, modelo, capacidad, etc.)
Then el sistema registra el bus y lo asocia con la Transport Company
And muestra una confirmación con los detalles del bus registrado

Scenario: Intento de registro con número de bus duplicado
Given que un administrador está registrando un nuevo bus
When ingresa un número de bus que ya existe en el sistema para esa Transport Company
Then el sistema muestra un mensaje de error indicando que el número de bus ya está en uso
And no permite completar el registro

Scenario: Registro de bus con características especiales
Given que un administrador está registrando un nuevo bus
When indica que el bus tiene características especiales (accesibilidad, eco-friendly, etc.)
Then el sistema permite agregar estas características al registro del bus
And las incluye en la confirmación final del registro