Feature: Obtener información de la ubicación del bus en tiempo real

Scenario: Obtención exitosa de la ubicación del bus
Given que el sistema GPS del bus está funcionando correctamente
When se solicita la ubicación del bus en tiempo real
Then el sistema devuelve las coordenadas GPS actuales del bus
And la información se actualiza en el sistema central

Scenario: Fallo en la obtención de la ubicación
Given que hay un problema con el sistema GPS del bus
When se intenta obtener la ubicación del bus
Then el sistema devuelve un mensaje de error
And se registra el incidente para su seguimiento

Scenario: Actualización periódica de la ubicación
Given que el sistema está configurado para actualizar la ubicación cada minuto
When transcurre un minuto desde la última actualización
Then el sistema obtiene automáticamente la nueva ubicación del bus
And envía esta información al sistema central