Feature: Visualización de datos de conductores y buses

Scenario: Obtener la lista de conductores y los buses que manejan
Given que el endpoint "/api/drivers-info" se encuentra disponible
And que existen registros de conductores y buses en la base de datos,
When una petición GET es enviada
Then se recibe una respuesta 200 OK
And un array de objetos es incluído, donde cada objeto contiene la información del conductor (como nombre, número de identificación, etc.) y detalles del bus (como la placa, modelo, y estado actual). Escenario 2: Ausencia de conductores o buses
Given que el endpoint "/api/drivers-info" se encuentra disponible
And no existen conductores o buses registrados en la base de datos,
When una petición GET es enviada
Then se recibe una respuesta 204 No Content para indicar que actualmente no hay datos disponibles.

Scenario: Errores inesperados al recuperar información
Given que el endpoint "/api/drivers-info" no se encuentra disponible
When una petición GET es enviada
Then es recibida una respuesta 500 Internal Server Error.
And un mensaje es incluído en la solicitud con el mensaje "Servicio de información de conductores no disponible"