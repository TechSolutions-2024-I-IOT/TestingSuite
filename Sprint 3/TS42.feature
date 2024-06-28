Feature: Obtener información del sensor de peso

Scenario: Lectura exitosa del sensor de peso
Given que el sensor de peso está instalado y funcionando correctamente en el bus
When se solicita la lectura del sensor de peso
Then el sistema devuelve el peso actual registrado en el bus
And esta información se envía al sistema central para su procesamiento

Scenario: Detección de sobrecarga
Given que el sensor de peso está funcionando correctamente
When la lectura del sensor supera el límite de peso establecido para el bus
Then el sistema genera una alerta de sobrecarga
And notifica al conductor y al centro de control

Scenario: Fallo en la lectura del sensor
Given que hay un problema con el sensor de peso
When se intenta obtener la lectura del sensor
Then el sistema devuelve un mensaje de error
And registra el incidente para mantenimiento