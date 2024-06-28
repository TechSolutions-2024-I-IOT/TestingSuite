Feature: Registro de Itinerario

Scenario: Registro exitoso de un TransportCompany
Given que el endpoint "/api/bus-lines/register" está disponible
When la petición POST es enviada junto con valores sobre la línea (nombre, ruta, horarios, información del bus)
Then una respuesta es recibida con estado 201
And un TransportCompany Resurce es incluído en el ResponseBody, incluyendo un identificador único asignado y los valores envíados con anterioridad (nombre,ruta,etc)

Scenario: Datos incompletos o inválidos
Given que el endpoint "/api/bus-lines/register" está disponible
When la solicitud POST es enviada con datos incompletos o inválidos para la línea de bus
Then se recibe un 400 Bad Request
And un mensaje incluído en el response que detalle los problemas encontrados en los datos proporcionados

Scenario: Registro de Transport Company ya añadido anteriormente
Given que el endpoint "/api/bus-lines/register" está disponible
When la solicitud POST es enviada con los valores para nombre, itinerario, horarios e información del bus
And el TransportCompany con los mismos datos ya han sido almacenados
Then es recibido un error 409 Conflict indicando que la línea de bus ya está registrada