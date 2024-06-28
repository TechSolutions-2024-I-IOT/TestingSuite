Feature: Enviar información del sensor de pulso al backend cloud

Scenario: Envío exitoso de datos de pulso
Given que el sensor de pulso del conductor está funcionando correctamente
When se recopilan los datos de pulso del conductor
Then los datos se envían exitosamente al backend cloud
And se recibe una confirmación de recepción

Scenario: Detección de anomalía en el pulso
Given que el sensor de pulso está monitoreando al conductor
When se detecta una lectura de pulso fuera del rango normal
Then se genera una alerta de anomalía
And se envía inmediatamente al backend cloud para su procesamiento

Scenario: Fallo en el envío de datos de pulso
Given que hay un problema de conectividad
When se intenta enviar los datos de pulso al backend cloud
Then el sistema almacena temporalmente los datos
And intenta reenviarlos cuando se restablezca la conexión