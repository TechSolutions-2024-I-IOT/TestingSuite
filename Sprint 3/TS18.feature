Feature: Mandar la información recopilada en el Gateway hacia una plataforma Cloud

Scenario: Envío Exitoso de Datos desde el Gateway hacia la Plataforma en la Nube
Given que los datos recopilados en el Gateway están listos para ser enviados a la plataforma en la nube
When se establece una conexión segura utilizando el protocolo HTTPS y se envían los datos desde el Gateway hacia la plataforma en la nube
Then la plataforma en la nube recibe los datos con éxito y envía una confirmación de recepción al Gateway junto con un código de estado HTTP 200 OK

Scenario: Falla en el Envío de Datos debido a una Conexión Perdida
Given que se intenta enviar datos desde el Gateway hacia la plataforma en la nube
When durante el proceso de envío, se pierde la conexión a Internet
Then el Gateway no puede establecer la conexión con la plataforma en la nube y recibe un código de error HTTP 503 Service Unavailable
And el Gateway intentará reenviar los datos cuando la conexión se restablezca

Scenario: Error de Autenticación con la Plataforma en la Nube
Given que se intenta enviar datos desde el Gateway hacia la plataforma en la nube
When el Gateway intenta autenticarse con la plataforma en la nube, pero las credenciales proporcionadas son incorrectas
Then la plataforma en la nube rechaza la conexión y devuelve un código de estado HTTP 401 Unauthorized
And el Gateway notifica al administrador del sistema sobre el error de autenticación para corregir las credenciales