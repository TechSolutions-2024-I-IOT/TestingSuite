Feature: Pulsaciones de corazón del conductor

Scenario: Obtener el rango de pulsaciones de corazón del conductor
Given que el endpoint "/api/drivers/{driverId}/heart-rate" se encuentra disponible ,
And que existen registros de las pulsaciones de corazón para un conductor en un rango horario específico,
When una petición GET es enviada junto con parámetros de consulta para el rango horario,
Then se recibe una respuesta 200 OK compuesta por un array de objetos, cada uno representando un intervalo de tiempo con las pulsaciones mínimas, máximas y promedio registradas en ese período.

Scenario: Manejo de solicitud de un conductor sin registros de pulsaciones
Given que el endpoint "/api/drivers/{driverId}/heart-rate" se encuentra disponible ,
And que no existen registros de pulsaciones para el conductor en el rango horario solicitado,
When la petición GET es enviada junto con parámetros de consulta para el rango horario,
Then se recibe una respuesta de tipo 204 No Content
And un mensaje es incluído en el response body con el valor "No existen datos de pulsaciones disponibles para el conductor en el rango horario especificado."

Scenario: Manejo de una solicitud con ID de conductor inválido o inexistente
Given que el endpoint "/api/drivers/{driverId}/heart-rate" se encuentra disponible ,
When la petición GET es enviada junto con un ID de conductor
And el ID del conductor no existe o es inválido
Then una respuesta de tipo 404 Not Found es recibida
And un mensaje es incluído en el response body, con el valor "Conductor no registrado en el sistema o el ID proporcionado es incorrecto."