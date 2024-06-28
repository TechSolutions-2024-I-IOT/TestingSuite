Feature: Alertas de pulsaciones del conductor 

Scenario: Generar alertas por pulsaciones bajas
Given que el endpoint /api/drivers/alerts se encuentra disponible
And que el sistema recibe datos de pulsaciones de un conductor que caen por debajo del mínimo predeterminado,
When se procesan los datos
Then una alerta es generada y un 200 OK es recibido con un mensaje de alerta, incluyendo el ID del conductor, la hora del evento y un mensaje indicando que las pulsaciones están anormalmente bajas.

Scenario: Generar alertas por pulsaciones altas
Given que el endpoint /api/drivers/alerts se encuentra disponible
And que el sistema recibe datos de pulsaciones de un conductor que superan el máximo predeterminado,
When estos datos son procesados
Then se genera una alerta y se recibe un 200 OK con un mensaje de alerta, incluyendo el ID del conductor, la hora del evento y un mensaje indicando que las pulsaciones están anormalmente altas.

Scenario: Manejar ausencia de datos de pulsaciones
Given que el endpoint /api/drivers/alerts se encuentra disponible
And que no se reciben datos de pulsaciones para un conductor durante un período mayor a 4 minutos,
When se realiza verifica la actividad del conductor ,
Then el sistema se genera una alerta de "sin datos" y es recibida una respuesta 200 OK con un mensaje indicando la falta de datos de pulsaciones y potencialmente sugerir verificar el dispositivo del conductor.